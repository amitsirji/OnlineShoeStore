<?php
class admin_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }
	
		

		
		function check_login($options)
		{
		
			 $username		= $options['username'];
			 $password		= $options['password'];
			 $data = array(
   							'username' 		=> $username,
   							'password' 		=> $password);
							
			 $result	=	$this->db->get_where('wg_admin', $data);				
			if($result->num_rows()>0)
			{
				$row =	$result->row();

				$sess_array = array(
				'admin'			=>	$row->username,
				); 
				
				$this->session->set_userdata($sess_array);
				
				//exit();
				return 'true';
			}
			else 
			return 'failed';
		}
	
		function check_email_exists($email)
		{
			$this->db->select('*');
			$this->db->where('member_email',$email);
			$result = $this->db->get('members');
			
			if($result->num_rows()>0)
			return "1";
			else
			return "0";
			
		}
                
                
                	
		function add_category($options)
		{
			
			$cat_name = $options['name'];
			
			$data = array(
			"cat_name" => $cat_name);
		
				if($this->check_category_exists($cat_name)=='0')
				{
					$this->db->insert('wg_categories',$data);
					$url = base_url()."index.php/admin/categories";
					header("Location:$url");
					exit();
				}
				else
				{
						$url = base_url()."index.php/admin/add_category/failed";
						header("Location:$url");
				}
			
			}		
			
		function check_category_exists($cat_name)
		{
			$this->db->select('*');
			$this->db->where('cat_name',$cat_name);
			$result = $this->db->get('wg_categories');
			
			if($result->num_rows()>0)
			return "1";
			else
			return "0";
			
		}
		
		function getAllCategories()
		{
				
				$this->db->select("*");
				$result = $this->db->get('wg_categories');
				if($result->num_rows()>0)
				return $result->result();
				else
				return 'empty';
				
		}	
		
		
		function getAllProducts()
		{
				$page = $this->uri->segment(3);
                                if($page=='')
                                    $page=1;
                                
                                $start = ($page-1)*RECORDS_PER_PAGE;
                                $end = RECORDS_PER_PAGE;
                                
				$this->db->select("*");
                                $this->db->limit($end,$start);
                                $this->db->order_by('item_id','desc');
				$result = $this->db->get('wg_items');
				if($result->num_rows()>0)
				return $result->result();
				else
				return 'empty';
				
		}
                
                
                function getAllProductsCount()
		{
				
				$this->db->select("*");
				$result = $this->db->get('wg_items');
				if($result->num_rows()>0)
				return $result->num_rows();
				else
				return 'empty';
				
		}
	
	
	function getCategoryDetails($id)
		{
				
				$this->db->select("*");
				$this->db->where('cat_id',$id);
				$result = $this->db->get('wg_categories');
				if($result->num_rows()>0)
				return $result->row();
				else
				return 'empty';
				
		}
		
		function getProductDetails($id)
		{
				
				$this->db->select("*");
				$this->db->where('item_id',$id);
				$result = $this->db->get('wg_items');
				if($result->num_rows()>0)
				return $result->row();
				else
				return 'empty';
				
		}
	
	
	function update_category($options)
	{
		
		$cat_id 	=	 $options['cat_id'];
		$cat_name	=	 $options['name'];
		
		if($this->check_category_exists($cat_name)=='0')
		{
			$data = array("cat_name" => $cat_name);
			$this->db->where('cat_id',$cat_id);
			$this->db->update('wg_categories',$data);
		}
		else
		{
			$url = base_url()."index.php/admin/edit_category/$cat_id/error";
			header("Location:$url");
			exit();
		}
		
	}
	
	function delete_category($cat_id)
	{
		
		$this->db->where('cat_id',$cat_id);
		$this->db->delete('wg_categories');
		
		$url = base_url()."index.php/admin/categories";
		header("Location:$url");
		
	}
	
	
	function add_product($options)
		{
			$data = array(
			"cat_id" 		=> $options['cat_id'],
			"item_name" 	=> $options['title'],
			"item_price" 	=> $options['price'],
			"item_desc" 	=> $options['desc'],
			"item_stock" 	=> $options['stock']
			);
		
					$this->db->insert('wg_items',$data);
					return $this->db->insert_id();
			
		}
		
		
	function delete_product($product_id)
	{
		
		$this->db->where('item_id',$product_id);
		$this->db->delete('wg_items');
		
		$url = base_url()."index.php/admin/products";
		header("Location:$url");
		
	}
	
	function update_product($options)
	{
		$item_id = $options['item_id'];
		$data = array(
			"cat_id" 		=> $options['cat_id'],
			"item_name" 	=> $options['title'],
			"item_price" 	=> $options['price'],
			"item_desc" 	=> $options['desc'],
			"item_stock" 	=> $options['stock']
			);
			$this->db->where('item_id',$item_id);
			$this->db->update('wg_items',$data);
			
			
			//$url = base_url()."index.php/admin/products";
			//header("Location:$url");
		
		
	}
	
	function update_image_links($big_image,$medium, $thumbnail,$id)
	{
		
			$data = array(
			"thumbnail" => $thumbnail,
			"medium_image" => $medium,
			"big_image" => $big_image);
			
			$this->db->where('item_id',$id);
			$this->db->update('wg_items',$data);	
		
	}	
        
        
        function getCustomerList()
		{
            $page = $this->uri->segment(3);
                                if($page=='')
                                    $page=1;
                                
                                $start = ($page-1)*RECORDS_PER_PAGE;
                                $end = RECORDS_PER_PAGE;
                                
			$this->db->select('*');
                        $this->db->limit($end,$start);
			$this->db->order_by("user_id","desc");
			$result = $this->db->get('wg_users');
			
			if($result->num_rows()>0)
			return $result->result();
			else
			return "empty";
			
		}
        
                
            function getCustomerCountt()
		{
			$this->db->select('*');
			$this->db->order_by("user_id","desc");
			$result = $this->db->get('wg_users');
			if($result->num_rows()>0)
                            return $result->num_rows();
			else
			return "empty";
			
		}
            
         function getOrderList()
		{
                                $page = $this->uri->segment(3);
                                if($page=='')
                                    $page=1;
                                
                                $start = ($page-1)*RECORDS_PER_PAGE;
                                $end = RECORDS_PER_PAGE;
                                
				$this->db->select("*");
                                $this->db->limit($end,$start);
                               
				$this->db->order_by('order_id','DESC');
				$result = $this->db->get('wg_orders');
				if($result->num_rows()>0)
				return $result->result();
				else
				return 'empty';
		}
        
                
            function getOrderCount()
		{
				$this->db->select("*");
				$this->db->order_by('order_id','DESC');
				$result = $this->db->get('wg_orders');
				if($result->num_rows()>0)
				return $result->num_rows();
				else
				return 'empty';
		}
             
                
          function getOrderDetails($order_id)
		{
				
				$this->db->select("*");
				$this->db->where("order_id",$order_id);
				$result = $this->db->get('wg_orders');
				if($result->num_rows()>0)
				return $result->row();
				else
				return 'empty';

		}
                
           function cancel_order($order_id)
		{
			
			$this->db->where('order_id',$order_id);
			$this->db->set('order_status','cancelled');
			$this->db->update('wg_orders');
			$url = base_url()."index.php/admin/orders";
			header("Location:$url");
			
		}     
	function dispatch_order($order_id)
		{
			
			$this->db->where('order_id',$order_id);
			$this->db->set('order_status','dispatched');
			$this->db->update('wg_orders');
			$url = base_url()."index.php/admin/orders";
			header("Location:$url");
			
		}     
		      
	function getCustomerOrders($user_id)
		{
				$this->db->select("*");
                                $this->db->where('user_id',$user_id);
				$this->db->order_by('order_id','DESC');
				$result = $this->db->get('wg_orders');
				if($result->num_rows()>0)
				return $result->result();
				else
				return 'empty';
		}
                
            function getCustomerDetails($user_id)
		{
				$this->db->select("*");
                                $this->db->where('user_id',$user_id);
				$result = $this->db->get('wg_users');
				if($result->num_rows()>0)
				return $result->row();
				else
				return 'empty';
		}
                
             function delete_customer($user_id)
		{
				$this->db->select("*");
                                $this->db->where('user_id',$user_id);
				$this->db->delete('wg_users');
				header("Location:".  base_url()."index.php/admin/");
		}
                
             
        function update_customer($options)
	{
		
		$data = array(
		"full_name"	 	=> $options['full_name'],
		"email"			=> $options['email'],	
		"account_type" 		=> $options['account_type'],
		"company_name" 		=> $options['company_name'],
		"user_pass" 		=> $options['password'],
		);
		
		$this->db->where('user_id',$options['customer_id']);
		$this->db->update('wg_users',$data);
		$this->session->set_userdata($data);
		header("Location:".base_url()."index.php/admin/cEdit/".$options['customer_id']."/success");	
		
		
	}   
            
         	
///////// Please above this //////////////		
}