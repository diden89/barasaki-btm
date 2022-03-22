/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/assets/js/admin/about_us.js
 */



$(document).ready(function() {
	$('.textarea').summernote({
        callbacks: {
            onImageUpload: function (image) {
                uploadImage(image[0]);
            }
        }
    });

	$('#formInputEmployee').submit(function(e){
		$('.project.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            e.preventDefault(); 
                 $.ajax({
                     url: siteUrl+'employee/input_action',
                     type:"post",
                     data:new FormData(this),
                     processData:false,
                     contentType:false,
                     cache:false,
                     async:false,
                     dataType :'json',
                     success: function(response){
                     	if(response.status)
                     	{
                     		$('div.overlay').remove();
                          alert("Input Data Berhasil.");
                          window.location.replace(response.url);
                     	}
                     	else
                     	{
                     		$('div.overlay').remove();
                     		alert("Input Data Gagal.");
                     	}

                   }
                 });
            });
});