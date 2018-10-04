<?php
class Dashboard extends CI_Controller{
	function __construct()
	{
		parent::__construct();
		$this->load->model('users_model');
		$this->form_validation->set_error_delimiters('<div class="error-line msg-error">', '</div>');
		$this->load->helper('Ultils');
		$this->load->helper('settings');
	}

	private function sendMessage($content){
		$settings=getSettings(PUSH_SETTING_FILE);
		$content = array(
			"en" => $content
			);
		
		$fields = array(
			'app_id' => $settings['app_id'],
			'included_segments' => array('All'),
			'contents' => $content
			);
		
		$fields = json_encode($fields);
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json; charset=utf-8',
			'Authorization: Basic '.$settings['rest_key']));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
		curl_setopt($ch, CURLOPT_HEADER, FALSE);
		curl_setopt($ch, CURLOPT_POST, TRUE);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

		$response = curl_exec($ch);
		curl_close($ch);
		return $response;
	}

	function index(){
		if(!isset($_SESSION['user']) || $_SESSION['user']==null){
			$this->load->view('backends/login');
		}else{
			if(isset($_POST)){
				$content = $this->input->post('content');
				$response = $this->sendMessage($content);
			}
			$this->template->write_view('content','backends/dashboard',array());
			$this->template->render();
		}
	}

	function login(){
		if(isset($_POST['user_name']) && isset($_POST['pwd'])){
			$pass_data=null;
			$this->form_validation->set_rules('user_name','username', 'trim|required|xss_clean');
			$this->form_validation->set_rules('pwd','password', 'trim|required|xss_clean');
			if($this->form_validation->run()!=false){
				$user_name=$_POST['user_name'];
				$pwd=$_POST['pwd'];
				$this->load->model('users_model');
				$this->load->helper('ultils');
				$data=$this->users_model->get_by_username_and_pwd($user_name,encrypt_pwd($pwd));
				if($data!=null){
					$_SESSION[user]=$data;
					echo $this->db->last_query();
					redirect('admin/dashboard');
				}else{
					$pass_data['error_msg']='<div class="error-line">Wrong password or username, try again</div>';
				}
			}
			$this->load->view('backends/login',$pass_data);
		}else{
			redirect('admin/dashboard');
		}
	}

	function logout(){
		if(isset($_SESSION['user'])){
			unset($_SESSION['user']);
			redirect('admin/dashboard');
		}else{
			redirect('admin/dashboard');
		}
	}

	public function update_profile(){
		if(isset($_SESSION['user'])){
			$user=$_SESSION['user'][0];
			$this->form_validation->set_rules('full_name','full name', 'trim|required|min_length[5]|max_length[60]|xss_clean');
			$this->form_validation->set_rules('email','email', 'trim|required|min_length[5]|max_length[60]|xss_clean|valid_email|callback_check_email_exist_edit');
			$this->form_validation->set_rules('address','address', 'trim|required|min_length[5]|max_length[60]|xss_clean');
			if($this->form_validation->run()){
				$update_data['full_name']=$this->input->post('full_name');
				$update_data['email'] = $this->input->post('email');
				$update_data['address'] =$this->input->post('address');
				$this->users_model->update($update_data,array('id'=>$user->id));
				$this->session->set_flashdata('msg_ok',$this->lang->line('update_successfully'));

				$config['upload_path'] = 'uploads/avts';
				$config['allowed_types'] = 'gif|jpg|png|jpeg';
				$config['max_size']	= '15000';
				$config['max_width']  = '1024';
				$config['max_height']  = '768';
				$this->load->library('upload', $config);
				if(isset($_FILES['image'])){
					$filename=$_FILES['image']['name'];
					$_FILES['image']['name']=rename_upload_file($filename);
				}
				if ($this->upload->do_upload('image')){
					try{
						unlink($user->avt);
					}catch(Exception $e){
						
					}
					$update_data['avt'] = 'uploads/avts/'.$_FILES['image']['name'];
					$this->users_model->update($update_data,array('id'=>$user->id));
				}else{
				}

				redirect('admin/dashboard/update_profile');
			}
			$data['obj']=$this->users_model->get_by_id($user->id);
			$_SESSION['user']=$data['obj'];
			$this->template->write_view('content','backends/users/update_profile',$data);
			$this->template->render();
		}else{
			redirect('admin/dashboard');
		}
	}

	public function update_pwd(){
		if(isset($_SESSION['user'])){
			$user=$_SESSION['user'][0];
			$this->form_validation->set_rules('old_pwd','old password', 'trim|required|xss_clean');
			$this->form_validation->set_rules('new_pwd','new password', 'trim|required|xss_clean');
			$this->form_validation->set_rules('cfm_pwd','confirm password', 'trim|required|xss_clean|callback_check_equal_less['.$this->input->post('new_pwd').']');
			if($this->form_validation->run()){
				$old_pwd=$this->input->post('old_pwd');
				if(encrypt_pwd($old_pwd)!=$user->pwd){
					$data['error_msg']="Your old password incorrect, updated failed";
				}else{
					$new_pwd=$this->input->post('new_pwd');
					$update_data['pwd']=encrypt_pwd($new_pwd);
					$this->users_model->update($update_data,array('id'=>$user->id));
					$data['success_msg']="Update success";
				}
			}
			$data['obj']=$this->users_model->get_by_id($user->id);
			$this->template->write_view('content','backends/users/update_pwd',$data);
			$this->template->render();
		}else{
			redirect('admin/dashboard');
		}
	}

	function check_equal_less($second_field,$first_field)
	{
		$new_pwd=$this->input->post('new_pwd');
		$cfm_pwd=$this->input->post('cfm_pwd');
		if ($new_pwd!=$cfm_pwd)
		{
			$this->form_validation->set_message('check_equal_less', 'The confirm password need the same confirm password');
			return false;       
		}
		else
		{
			return true;
		}
	}

	function settings(){
		$this->load->helper('settings');
	}

	function mail(){
		$this->load->helper('email_ultils');
		//send_verified_mail("álkdjsad","luann4099@gmail.com");
		send_enquiry();
	}
}
?>