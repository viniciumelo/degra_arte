<div class="container box-wrapper">
	<div class="page-header controls-wrapper">
		<a href="<?php echo base_url().'admin/tables/create';?>" class="btn btn-primary"><?php echo lang('msg_add');?></a>
		<input class="search-query form-control col-sm-2" type="text" value=""  placeholder="<?php echo lang('msg_search');?>">
	</div>
	<script type="text/javascript">
		$('.search-query').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if (code == 13) {
				var q = $('.search-query').val();
				if (q != "") {
					location.href ="<?php echo base_url().'admin/tables/search';?>?query=" + q;
				}
			}
		})
	</script>

	<h4>
		<?php if(isset($search_title)){
			echo $search_title;
		}
		?>
		
	</h4>

	<!--end show alert messager-->
	<div class="row-fluid box-wrapper">
		<div class="span12">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th><a href="">#</a></th>
						<th><?php echo lang('msg_city');?></th>
						<th><?php echo lang('msg_county'); ?></th>
						<th><?php echo lang('msg_description'); ?></th>
						<th colspan="2"><?php echo lang('msg_operation');?></th>
					</tr>
				</thead>
				<tbody>
					<?php if($list!=null)
					foreach($list as $r){
						?>
						<tr>
							<td><?php echo $r->id;?></td>
							<td><?php echo $r->table_no;?></td>
							<td><?php echo $r->number_of_places; ?></td>
							<td><?php echo $r->description ?></td>
							<td><a class="btn btn-info"  href="<?php echo base_url().'admin/tables/edit?id='.$r->id;?>"><?php echo lang('msg_edit');?></a></td>
							<td><a class="btn btn-danger" href="<?php echo base_url().'admin/tables/delete?id='.$r->id;?>" onclick="return confirm('<?php echo lang('msg_confirm_delete');?>')"><?php echo lang('msg_delete');?></a></td>
						</tr>
						<?php };?>
					</tbody>
				</table>
				<?php echo $page_link;?>
			</div>
		</div>
	