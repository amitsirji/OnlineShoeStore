<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" href="<?php echo base_url();?>css/main.css" type="text/css">
	</head>
<body>
	<div id="wrapper">
			<?php $this->load->view("header"); ?>
	  <div id="content" class="checkout">
			  <div id="breadcrumb"> <a href="#">Our Products</a> </div>
			  <div id="left">
			    <h1 class="bar">Customer Dashboard</h1>
			    <ul id="cats">
			      <li><a href="<?php echo base_url();?>index.php/user">My Orders</a></li>
			      <li><a href="<?php echo base_url();?>index.php/user/account">Update My Details</a></li>
		        </ul>
	    </div>
			  <div id="right">
			    <h1 class="bar">My Orders</h1>
                <?php if($orders!='empty')
				{
					?>
			    <table id="cart">
			      <thead>

			      <tr>
			        <th>Order No</th>
			        <th>Order Time</th>
			        <th>Status</th>
			        <th>Actions</th>
			         </tr>
                  </thead>
			      <tbody>
                  <?php foreach($orders as $order)
				  {
					  ?>
			        <tr>
			          <td><?php echo $order->order_id;?></td>
			          <td><?php echo $order->order_date;?></td>
			          <td>
                      <?php
					  
					 if($order->order_status=='dispatched')
					 		echo '<span style="color:green"><strong>Dispatched</strong></span>';
							
					 if($order->order_status=='cancelled')
					  		echo '<span style="color:red"><strong>Cancelled</strong></span>';
					  
					 if($order->order_status=='new')
					 		echo '<span style="color:orange"><strong>Order Received</strong></span>';
					 
					  ?>
					  </td>
			          <td><a href="<?php echo base_url();?>index.php/user/view/<?php echo $order->order_id;?>">View</a>
                      <?php if($order->order_status=='new') { ?>
					  | <a href="<?php echo base_url();?>index.php/user/cancel/<?php echo $order->order_id;?>">Cancel Order</a>
                      <?php } ?>
                      </td>
		            </tr>
                    <?php }?>
			        
		          </tbody>
		        </table>
			    <div id="actions">
			      <div id="pagination"> <a href="">&laquo;</a> <a class="active" href="">1</a> <a href="">2</a> <a href="">3</a> <a href="">4</a> <a href="">&raquo;</a> </div>
		        </div>
                <?php } else echo "No Record"; ?>
	    </div>
			  <div class="clear"></div>
			  <?php $this->load->view("footer"); ?>
	  </div>
	</div>
</body>
</html>