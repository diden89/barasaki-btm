<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /D/xampp/htdocs/iwebebs/application/module_frontend/products/controllers/products.php
 */

class Products extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model("products_model","pm");
	}

	public function index()
	{
		$link = $this->uri->segment(1);

		$this->store_params = array(
			"products" => $this->load_products(),
			"category" => $this->load_category(),
			"contact" => $this->load_contact(),
			"slider" => $this->load_slider($link),
		);
		
		$this->view('products_view');
	}

	public function category($id)
	{
		$url = $this->uri->segment(1);

		$this->store_params = array(
			"category" => $this->load_category(),
			"slider" => $this->load_slider($url),
			"products" => $this->pm->load_products($id)->result(),
			
		);
		// print_r($this->store_params);exit;
		$this->view('category_products_views');
	}

	public function filter_data()
	{
		$action = $_REQUEST['action'];
		$data = array();
		$filter = $this->pm->load_products($action);

		if($filter->num_rows() > 0)
		{	
			$data['products'] = $filter->result_array();
			$data['contact'] = $this->load_contact();
			echo $this->load->view('filter_view',$data);
		}
		else
		{
			echo $this->load->view('filter_view',$data);
		}
		
	}

	public function load_products($prm = 'show-all')
	{
		$product = $this->pm->load_products($prm)->result();
		// print_r($product);exit;
		return $product;
	}
	
	public function load_category()
	{
		$category = $this->pm->load_category('product')->result();

		return $category;
	}

	public function load_contact()
	{
		$category = $this->pm->load_contact('contact','WA')->row();

		return $category;
	}

	public function detail_products($data)
	{
		$link =  $this->uri->segment(1);
		$prod = $this->pm->get_products_detail($data)->row();

		$this->store_params = array(
			"data" => $prod,
			"meta_desc" => $prod->meta_desc,
			"meta_key" => $prod->meta_key,
			"image_prod" => $this->pm->load_image_products($data)->result(),
			"slider" => $this->load_slider($link),
			"source_top" => array(
				'<link rel="stylesheet" href="'.base_url('assets/css/other.css').'">',
				'<link rel="stylesheet" href="'.base_url('assets/templates/other/owl.carousel/assets/owl.carousel.min.css').'">',
				'<link rel="stylesheet" href="'.base_url('assets/templates/other/aos/assets/aos.css').'">',
			),
			"source_bot" => array(
				'<script>
				    $(document).ready(function(){


				      var owl=$(".owl-carousel").owlCarousel({
				        items:1,
				        dotsContainer:"#dots-box",
				        loop:true
				      });
				      $(".dots-click").click(function(){
				        var index=$(this).index();
				        $("#dots-box").find(".owl-dot").eq(index).trigger("click");
				      })

				      owl.on("changed.owl.carousel",function(){
				        var index=$("#dots-box").find(".active").index();
				        $(".dots-click").removeClass("active");
				        $(".dots-click").eq(index).addClass("active");
				      })

				      $(".am-next").click(function(){
				        owl.trigger("next.owl.carousel");
				      })

				      $(".am-prev").click(function(){
				        owl.trigger("prev.owl.carousel");
				      })
				    });
				</script>',
				 '<script src="'.base_url().'assets/templates/other/owl.carousel/owl.carousel.min.js"></script>',
				 '<script src="'.base_url().'assets/templates/other/aos/aos.js"></script>'
			)
		);
		// print_r($this->store_params);
		// exit;
		$this->view('detail_products');
	}

	public function load_slider($link)
	{
		$slider = $this->pm->load_slider($link)->row();

		return $slider;
	}

	

	public function get_new_message2()
	{
		$view = $this->input->post('view');
		$output = "";
		if($view != '')
		{
			// $upd = $this->pm->update_message();
		}
		else
		{
			$get_message = $this->pm->get_message();
			if($get_message->num_rows() > 0)
			{
				foreach($get_message->result() as $g => $m)
				{
					$output .= '
							   <li>
							   <a href="'.base_url('admin/message/show_msg/'.$m->id).'">
							   <strong>'.$m->first_name.' '.$m->last_name.'</strong><br />
							   <small><em>'.$m->subject.'</em></small>
							   </a>
							   </li>
							   ';
				}
				$output   .= '<li><a href="'.base_url('/admin/message').'" class="text-bold text-italic">View All Message</a></li>';
			}
			else
			{
				 $output .= '
   						  <li><a href="#" class="text-bold text-italic">Tidak ada Pesan Baru</a></li>';
			}
			
			$data = array(
			    'notification' => $output,
			    'unseen_notification'  => $get_message->num_rows()
			);

			echo json_encode($data);
		}
	}
}