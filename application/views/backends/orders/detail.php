<?php
$CI =& get_instance();
?>
<section class="content-header">
  <h1>
	<?php echo lang('msg_order'); ?>
	<small><?php echo lang('msg_order_no'); ?></small>
  </h1>
  <ol class="breadcrumb">
	<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
    <li><a href="#"><?php echo lang('msg_dashboard'); ?></a></li>
	<li><a href="#"><?php echo lang('msg_order'); ?></a></li>
	<li class="active"><?php echo lang('msg_order_no'); ?></li>
	
  </ol>
</section>

<section class="content">
    <!--show alert messager-->
    <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title"><?php echo lang('msg_order_no'); ?> <a href="#">#<?php echo $obj[0]->id; ?></a></h3>
        </div>
		
	<div class="info" style="padding: 20px 0;">
		<p>
			<?php echo lang('msg_customer_name') ?> : <strong><?php echo $obj[0]->full_name; ?></strong>
		</p>

		<p>
			<?php echo lang('msg_phone') ?> : <strong><?php echo $obj[0]->phone; ?></strong>
		</p>

		<p>
			<?php echo lang('msg_address') ?> : <strong><?php echo $obj[0]->address; ?></strong>
		</p>

	    <p>
			<?php echo lang('msg_message') ?> : <strong><?php echo $obj[0]->message; ?></strong>
		</p>

		<p>
			<?php echo lang('msg_received') ?> : <strong>
			<?php if($obj[0]->received==0){
				echo '<span class="label label-danger">'.lang('msg_no').'</span>';
			}else{
				echo '<span class="label label-success">'.lang('msg_yes').'</span>';
			} ?></strong>
		</p>
		<!-- <p>
				<?php echo lang('msg_payed') ?> : <strong>
			<?php if($obj[0]->payed==0){
				echo '<span class="label label-danger">'.lang('msg_no').'</span>';
			}else{
				echo '<span class="label label-success">'.lang('msg_yes').'</span>';
			} ?></strong>
		</p> -->
	</div>
    
    <div class="box-body table-responsive no-padding">
      <table class="table table-hover">
        <tbody>
        <tr>
          <th width="100px" style="text-align:center"><a href=""><?php echo lang('msg_id');?></a></th>
          <th><?php echo lang('msg_name')?></th>
          <th><?php echo lang('msg_quantity')?></th>
          <th><?php echo lang('msg_sizes')?></th>
          <th><?php echo lang('msg_extras'); ?></th>
          <th><?php echo lang('msg_each_price')?></th>
        </tr>
        <?php if(isset($list) && $list!=null)
        $sub_total=0;
        foreach($list as $r){
            $sub_total+=$r->price;
            ?>
            <tr>
                <td style="text-align: center"><?php echo $r->id?></td>
                <td><a href="<?php echo base_url().'food?id='.$r->food_id ?>"><?php echo $r->name?></a></td>
                <td><?php echo $r->quantity; ?></td>
                <td><?php echo $r->size; ?></td>
                <td>
                    <?php
                    if($r->extras_name!=null){
                        $extras_name=explode(',',$r->extras_name);
                        $extras_id=explode(',',$r->extras_id);
                        $extras_price=explode(',',$r->extras_price);
                        for($i=0 ; $i<count($extras_name) ; $i++) {
                            if($extras_name[$i]!=null && $extras_name[$i]!=''){
                                echo str_replace('()','', $extras_name[$i] . ' ('.format_money($extras_price[$i]).')');
                                echo '</br>';
                            }
                        }
                    }
                    ?>
                </td>
                <td><?php echo format_money($r->price);?></td>
            </tr>
            <?php
        }

        $settings= getSettings(GENERAL_SETTING_FILE);
        $tax=$sub_total*($settings['tax']/100);
        $shipfee=$settings['ship_fee'];
        $total=$sub_total+$tax+$shipfee;
        ?>
      </tbody></table>
      <center><?php if(isset($page_link)) echo $page_link;?></center>
    </>
    <!-- /.box-body -->
  </div>

	<div style="padding: 20px;">
		<p>
			<?php echo lang('msg_sub_total') ?> : <strong><?php echo format_money($sub_total); ?></strong>
		</p>

		<p>
			<?php echo lang('msg_tax') ?> : <strong><?php echo format_money($tax); ?></strong>
		</p>

        <p>
			<?php echo lang('msg_ship_fee') ?> : <strong><?php echo format_money($shipfee); ?></strong>
		</p>

		<p>
			<?php echo lang('msg_total_price') ?> : <strong><?php echo format_money($total); ?></strong>
		</p>

      <a href="<?php echo base_url().'admin/orders/delete?id='.$obj[0]->id ?>" class="btn btn-danger"><?php echo lang('msg_delete') ?></a>

		  <a href="<?php echo base_url().'admin/orders/mark_as_deliveried?id='.$obj[0]->id ?>" class="btn btn-success"><?php echo lang('msg_mark_as_delivered') ?></a>
	</div>


	<!--end form-->
</div>
<!--end container fluid-->

</section>

<style type="text/css">
.info{
	margin-left: 20px;
}
.info p{
	font-size: 16px;
}
</style>
