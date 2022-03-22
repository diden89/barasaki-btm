<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<base href="<?php echo base_url(); ?>" />
		<link rel="shortcut icon" href="<?php echo base_url($company->favicon); ?>">
		<title><?php echo $title; ?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="<?php echo $meta_desc; ?>">
	    <meta name="keywords" content="<?php echo $meta_key; ?>">
	    <meta name="author" content="bintangtanjuangmadani">
		<!-- Theme bintang tanjuang madani -->
		
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/img/apple-touch-icon.png" rel="apple-touch-icon">

		<!-- Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <link rel="stylesheet" href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/jquery-ui/jquery-ui.structure.css">
        <link rel="stylesheet" href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
        <link rel="stylesheet" href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/toastr/toastr.min.css">

		<!-- Vendor CSS Files -->
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/animate.css/animate.min.css" rel="stylesheet">
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/remixicon/remixicon.css" rel="stylesheet">
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/datatables-bs4/css/dataTables.bootstrap4.css">

		<!-- Template Main CSS File -->
		<link href="<?php echo base_url('assets/templates/btm/'); ?>assets/css/style.css" rel="stylesheet">
	    <?php
		
        if (isset($source_top) && is_array($source_top) && count($source_top) > 0)
        {
            echo implode("\n\t", $source_top)."\n";
        }
        ?>

	</head>
	<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html"><img src="<?php echo base_url($company->logo); ?>" alt="Home"/></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="index.html" class="active">Home</a></li>

          <li class="dropdown"><a href="#"><span>About</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="about.html">About</a></li>
              <li><a href="team.html">Team</a></li>
              <li><a href="testimonials.html">Testimonials</a></li>

              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a href="services.html">Services</a></li>
          <li><a href="portfolio.html">Portfolio</a></li>
          <li><a href="pricing.html">Pricing</a></li>
          <li><a href="blog.html">Blog</a></li>

          <li><a href="#">Contact</a></li>
          <li><a href="#" class="getstarted">Masuk</a></li>
          <li><a href="<?php echo base_url('registrasi');?>" class="daftar">Daftar</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  

  <main id="main">

    <!-- ======= About Section ======= -->
    <?php print $body."\n"; ?>
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>Koperasi Bintang tanjuang Madani</h3>
              <p>
                A108 Adam Street <br>
                NY 535022, USA<br><br>
                <strong>Phone:</strong> +1 5589 55488 55<br>
                <strong>Email:</strong> info@example.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Bintang tanjuang Madani</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <script type="text/javascript">
        var site_url = '<?php echo base_url(); ?>';
  </script>
    <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/jquery/jquery.js"></script>
    <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/jquery-ui/jquery-ui.js"></script>
    <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/moment/moment.js"></script>
    <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/sweetalert2/sweetalert2.min.js"></script>
    <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/toastr/toastr.min.js"></script>
  <!-- Vendor JS Files -->
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/waypoints/noframework.waypoints.js"></script>
 <!--  <script src="<?php// echo base_url('assets/templates/btm/'); ?>assets/vendor/php-email-form/validate.js"></script> -->
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/jquery_validation/js/validation.js"></script>
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/datatables/jquery.dataTables.js"></script>
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/vendor/datatables-bs4/js/dataTables.bootstrap4.js"></script>
  <script src="<?php echo base_url('assets/vendors/jquery_noobsdaterangepicker/js/noobsdaterangepicker.js'); ?>"></script>
  <script src="<?php echo base_url('assets/js/custom_validity.js'); ?>"></script>
 <!--  <script src="<?php //echo base_url('assets/'); ?>js/btm_script.js"></script> -->
    <?php

        if (isset($source_bot) && is_array($source_bot) && count($source_bot) > 0)
        {
            echo implode("\n\t", $source_bot)."\n";
        }
    ?>

  <!-- Template Main JS File -->
  <script src="<?php echo base_url('assets/templates/btm/'); ?>assets/js/main.js"></script>

</body>
</html>


		