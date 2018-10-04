<?php
class Categories extends MY_Controller{
	function __construct()
	{
		parent::__construct();
		if(!isset($_SESSION['user'])){
			redirect('admin/dashboard');
		}else{
			$user=$_SESSION['user'][0];
			if($user->perm==USER){
				redirect('admin/denied');
			}
		}
		$this->load->model('categories_model');
		$this->form_validation->set_error_delimiters('<span class="help-inline msg-error" generated="true">', '</span>');
	}

	function index(){
		//parent::authentication_backend();
		$base_url=base_url().'admin/categories';
		$page=$this->uri->segment(3);
		if(!is_numeric($page) || $page<=0){
			$page=1;
		}
		$first=($page-1)*$this->pg_per_page;
		$total_rows=$this->categories_model->total(array(),array());
		$data['list'] = $this->categories_model->get("*", array(),array(),$first, $this->pg_per_page, array('id' => 'DESC'));
		$data['page_link'] =parent::pagination_config($base_url,$total_rows,$this->pg_per_page);
		$this->render_backend_tp('backends/categories/index', $data);
	}

	public function create(){
		if(isset($_POST['name'])){
			$data['name']=$this->input->post('name');
			$this->form_validation->set_rules('name','name', 'trim|required|min_length[2]|max_length[60]|xss_clean|callback_check_username_exist_add');
			if($this->form_validation->run()!=false){
				$insert_id=$this->categories_model->insert($data);
				if($insert_id!=0){
					if(isset($_FILES['image'])){
						//$this->load->helper('Ultils');
						$dir=create_sub_dir_upload('uploads/categories/');
						$filename=$_FILES['image']['name'];
						$_FILES['image']['name']=rename_upload_file($filename);
						$config['allowed_types'] = 'gif|jpg|png|jpeg|JPG|JPEG|GIF|PNG';
						$config['max_size']	= '5000';
						$config['upload_path']=$dir;
						$this->load->library('upload',$config);
						if ($this->upload->do_upload('image'))
						{
							//$this->load->model('image_model');
							$data['path']=$dir.'/'.$_FILES['image']['name'];
							//$this->image_model->insert($data);
							$this->categories_model->update($data,array('id'=>$insert_id));

							$this->session->set_flashdata('msg_ok', $this->lang->line('add_successfully'));
							redirect(base_url().'admin/categories/create');
						}else{
							$this->session->set_flashdata('msg_error', $this->upload->display_errors());
							redirect(base_url().'admin/categories/create');
						}
					}
				}
			}
		}
		$this->template->write_view('content','backends/categories/add');
		$this->template->render();
	}

	public function check_username_exist_add($name){
		$data=$this->categories_model->get_by_exact_name($name, 0, 1);
		if ($data!=null)
		{
			$this->form_validation->set_message('check_username_exist_add', 'This name has exist');
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}

	public function check_username_exist_edit(){
		$id=$this->input->post('id');
		$name=$this->input->post('name');
		$data=$this->categories_model->get_by_name_and_diff_id($id,$name);
		if($data!=null) {
			$this->form_validation->set_message('check_username_exist_edit', 'This name has exist');
			return FALSE;
		} else {
			return TRUE;
		}
	}

	public function edit_get(){
		if(isset($_GET['id'])){
			$id=$this->input->get('id');
			$data['obj']=$this->categories_model->get_by_id($id);
			$this->load->model('categories_model');
			$data['parent_cat']=$this->categories_model->get_by_parent_id_and_diff_id(0,$id);
			$this->template->write_view('content','backends/categories/edit',$data);
			$this->template->render();
		}
	}

	public function edit_post(){
		if(isset($_POST['id'])){
			$id=$_POST['id'];
			$name=$_POST['name'];
			$this->form_validation->set_rules('name','name', 'trim|required|min_length[2]|max_length[60]|xss_clean|callback_check_username_exist_edit');
			if($this->form_validation->run()){
				if(!empty($_FILES['image']['tmp_name'])){
					$filename=$_FILES['image']['name'];
					$_FILES['image']['name']=rename_upload_file($filename);
					$dir=create_sub_dir_upload('uploads/categories/');
					$config['allowed_types'] = 'JPEG|jpg|JPG|png';
					$config['max_size'] = '5000';
					$config['width']     = 100;
					$config['height']   = 100;
					$config['upload_path'] = $dir;
					$this->load->library('upload',$config);
					if (!$this->upload->do_upload('image')){
						$this->session->set_flashdata('msg_failed',$this->upload->display_errors());
						redirect(base_url().'admin/categories/edit_get?id='.$id);
					}else{
						$this->categories_model->update(array('path'=>$dir.'/'.	$_FILES['image']['name']),array('id'=>$id));
						try {
							unlink($this->input->post('path'));
						} catch (Exception $e) {
							echo $e;
						}

					}
				}

				$this->categories_model->update(array('name'=>$name),array('id'=>$id));
				$this->session->set_flashdata('msg_ok',$this->lang->line('edit_successfully'));
				redirect(base_url().'admin/categories/edit_get?id='.$id);
			}

			$data['obj']=$this->categories_model->get_by_id($id);
			$this->load->model('categories_model');
			$data['parent_cat']=$this->categories_model->get_by_parent_id(0);
			$this->template->write_view('content','backends/categories/edit',$data);
			$this->template->render();
		}
	}

	public function delete(){
		if(isset($_GET['id'])){
			$id=$this->input->get('id');
			$obj=$this->categories_model->get_by_id($id);
			try {
				unlink($obj[0]->path);
			} catch (Exception $e) {

			}
			$this->categories_model->remove_by_id($id);
			redirect('admin/categories');
		}
	}

	public function search(){
		if(isset($_GET['query'])){
			$query=$this->input->get('query');
			$data=parent::getDataView();
			$page     = $this->input->get('page') ? $this->input->get('page') : 0;
			$per_page = $this->input->get('per_page') ? $this->input->get('per_page') : 10;
			$order    = $this->input->get('order') ? $this->input->get('order') : 'DESC';
			$config['total_rows'] = $this->categories_model->total(array(), array('name'=>$query));
			$config['base_url']= base_url() . 'index.php/admin/categories/search?order='.$order.'&query='.$query;
			$config['per_page']=$per_page;
			$data['msg_label']=$this->config->item('msg_label');
			$this->pagination->initialize($config);
			$data['list'] = $this->categories_model->get_by_name($query,$page,$per_page);
			// var_dump($data['list']);
			$data['page_link'] = $this->pagination->create_links();
			$data['search_title']='Result search for "'.$query.'"';
			$this->template->write_view('content','backends/categories/index',$data);
			$this->template->render();
		}
	}
}
?>
