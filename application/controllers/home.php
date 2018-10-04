<?php 
class Home extends MY_Controller{
   	function __construct()
	{
		parent::__construct();
		$this->load->helper('settings_helper');
	}


	function index(){

	}

	function food(){
		$settings=getSettings(GENERAL_SETTING_FILE);
		$id=$this->input->get('id');
		$this->load->model('food_model');
		$obj=$this->food_model->get_by_id($id);
		$data['obj']=$obj[0];

		$data['settings']=$settings;
		$this->load->view('food',$data);
	}
}
?>