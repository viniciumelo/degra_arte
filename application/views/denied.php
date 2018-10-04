<!doctype html>
<html>
<head>
	<?php
	$CI =& get_instance();
	$CI->load->view('backends/commons/header');
	?>
</head>
<body>
	<div class="row">
		<div class="alert alert-danger">
			Vcê não tem acesso a essa página  <a href="<?php echo base_url().'admin/dashboard';?>">volte</a> peça ajuda ao administrador <a href="<?php echo base_url().'admin/dashboard/logout'?>">logout</a>
		</div>
	</div>
	<style type="text/css">
	.alert{
		text-align: center;
		margin-top: 10px;
		margin-left: 50px;
		margin-right: 20px;
	}
	</style>
</body>
</html>