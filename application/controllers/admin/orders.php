<?php
class orders extends MY_Controller{
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
		$this->load->model('orders_model');
		$this->load->model('food_orders_model');
		$this->form_validation->set_error_delimiters('<span class="help-inline msg-error" generated="true">', '</span>');
	}

	function index(){
		$this->pg_per_page=4;
		$base_url=base_url().'admin/orders?filter=all';
		$page=$this->input->get('per_page');
		if(!is_numeric($page) || $page<=0){
			$page=1;
		}
		$first=($page-1)*$this->pg_per_page;
	

		$where=array();
		$filter=$this->input->get('filter');
		if($filter!=null){
			if($filter=='received'){
				$where['received']=1;
			}

			if($filter=='pending'){
				$where['received']=0;
			}
			
		    $base_url=base_url().'admin/orders?filter='.$filter;
		}

		$total_rows=$this->orders_model->total($where,array());
		$data['list'] = $this->orders_model->get("*", $where,array(),$first, $this->pg_per_page, array('orders.id'=>'ASC'));
		$data['page_link'] =parent::pagination_config($base_url,$total_rows,$this->pg_per_page,3,TRUE);
		$this->render_backend_tp('backends/orders/index', $data);
	}

	public function mark_as_deliveried(){
		if(isset($_GET['id'])){
			$id=$this->input->get('id');
			$this->orders_model->update(array('received'=>1),array('id'=>$id));
			redirect(base_url().'admin/orders/detail?id='.$id);
		}
	}

	public function detail(){
		if(isset($_GET['id'])){
			$id=$this->input->get('id');
			$data['obj']=$this->orders_model->get_by_id($id);
			$this->load->model('food_orders_model');
			$data['list']=$this->food_orders_model->get('*',array('order_id'=>$id),array());
			$this->template->write_view('content','backends/orders/detail',$data);
			$this->template->render();
		}
	}

	public function search(){
		if(isset($_GET['query'])){
			$query=$this->input->get('query');
			$data=parent::getDataView();
			$page     = $this->input->get('page') ? $this->input->get('page') : 0;
			$per_page = $this->input->get('per_page') ? $this->input->get('per_page') : 10;
			$order    = $this->input->get('order') ? $this->input->get('order') : 'DESC';
			$config['total_rows'] = $this->orders_model->total(array(), array('full_name'=>$query));
			$config['base_url']= base_url() . 'admin/orders/search?order='.$order.'&query='.$query;
			$config['per_page']=$per_page;
			$data['msg_label']=$this->config->item('msg_label');
			$this->pagination->initialize($config);
			$data['list'] = $this->orders_model->get_by_name($query,$page,$per_page);
			//echo $this->db->last_query();
			$data['page_link'] = $this->pagination->create_links();
			$data['search_title']='Result search for "'.$query.'"';
			$this->template->write_view('content','backends/orders/index',$data);
			$this->template->render();
		}
	}

	public function delete(){
		if(isset($_GET['id'])){
			$id=$this->input->get('id');
			$this->orders_model->remove_by_id($id);
			$this->food_orders_model->remove(array('order_id'=>$id));
		}
		redirect(base_url().'admin/orders');
	}
}
?>
