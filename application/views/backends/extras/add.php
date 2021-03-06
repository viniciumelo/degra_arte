<?php
$CI =& get_instance();
;?>
<script type="text/javascript">
jQuery(document).ready(function($) {
	$('#name').focus();
});
</script>
<section class="content-header">
  <h1>
	<?php echo lang('msg_extras'); ?>
	<small><?php echo lang('msg_add_extras'); ?></small>
  </h1>
  <ol class="breadcrumb">
	<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#"><?php echo lang('msg_dashboard'); ?></a></li>
	<li><a href="#"><?php echo lang('msg_extras'); ?></a></li>
	<li class="active"><?php echo lang('msg_add_extras'); ?></li>
	
  </ol>
</section>

<section class="content">
    <!--show alert messager-->
    <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title"><?php echo lang('msg_add_extras'); ?></h3>
        </div>
	<div>
		<?php
		if($CI->session->flashdata('msg_ok')){
			echo '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">×</button>'.$CI->session->flashdata('msg_ok').'</div>';
		}
		;?>
	</div>

	<form class="form-horizontal" id="form" method="post" action="" enctype="multipart/form-data" >
		<div class="form-group">
			<label class="control-label col-sm-2" for="txtName"><?php echo lang('msg_name');?></label>
			<div class="controls col-sm-10">
				<input type="text" id="name" name="name" value="" class="form-control">
				<?php echo form_error('name');?>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2" for="txtName"><?php echo lang('msg_price');?></label>
			<div class="controls col-sm-10">
				<input type="text" id="price" name="price" value="" class="form-control">
				<?php echo form_error('price');?>
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-10 col-sm-offset-2">
				<button type="submit" class="btn btn-primary" >
					<?php echo lang('msg_save');?>
				</button>
				<button type="reset" class="btn"><?php echo lang('msg_reset');?></button>
			</div>
		</div>
	</form>
	<!--end form-->
	<!--end container fluid-->
</div>
</section>