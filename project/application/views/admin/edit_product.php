<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
	<link rel="stylesheet" href="<?php echo base_url();?>css/main.css" type="text/css">
	</head>
<body>
	<div id="wrapper">
			<?php include("header.php"); ?>
			<div id="content" class="checkout">
				<div id="breadcrumb">
					<a href="#">Our Products</a>
				</div>
				<?php include("left.php"); ?>
				<div id="right">
				  <h1 class="bar">Add New Product</h1>
                  	
					<?php if(validation_errors()) { ?><div id="errors"><?php echo validation_errors(); ?></div> <?php } ?>
                	<?php if($this->uri->segment(4)!='') { ?><div id="errors"> Sorry - Product Updation Failed</div> <?php } ?>
                    
				  <form action="<?php echo base_url();?>index.php/admin/edit_product" method="post" enctype="multipart/form-data" id="admin">
				    <p>
				      <label>Product Title:</label>
				      <input name="title" type="text" id="title" value="<?php echo $product->item_name;?>"/>
			        </p>
				    <p>
				      <label>Product Price:</label>
				      <input name="price" type="text" id="price" value="<?php echo $product->item_price;?>"/>
			        </p>
				    <p>
				      <label>Stock:</label>
				      <input name="stock" type="text" id="stock" value="<?php echo $product->item_stock;?>"/>
			        </p>
				    <p>
				      <label>Photo:</label>
				      <input type="file" name="file" id="file" />
			        </p>
				    <p>
				      <label>Category:</label>
				      <select name="cat_id" id="cat_id">
                      <?php
					  
					 $categories = $this->admin_model->getAllCategories();
					 foreach($categories as $category)
					 {
					 ?>
				      	<option value="<?php echo $category->cat_id; ?>" <?php if($category->cat_id==$product->cat_id) echo 'selected="selected"';?>>
						<?php echo $category->cat_name; ?></option>
                        
                      <?php
					  }
					  ?>  
			          </select>
			        </p>
				    <p>
				      <label>Description:</label>
				      <textarea name="desc" id="desc"><?php echo $product->item_desc;?></textarea>
			        </p>
				    <input type="submit" name="submit" value="Add Product" />
                    <input type="hidden" name="action" value="1" />
                    <input type="hidden" name="item_id" value="<?php echo $this->uri->segment(3);?>" />
			      </form>
			  </div>
<div class="clear"></div>
				<div id="footer">
			</div>
			</div>
	
	</div>
</body>
</html>