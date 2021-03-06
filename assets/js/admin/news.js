/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/assets/js/admin/about_us.js
 */

$(document).ready(function() {
	$('.textarea').wysihtml5();
	// $('#submitProject').click(function(){
	// 	$('.project.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
		
	// 	var form = $('#formInputProjects');
	// 	var data = form.serializeArray();
	// 	console.log(new FormData(form));
	// 	$.ajax({
	// 		url: './projects/input_action',
	// 		method: 'POST',
	// 		dataType: 'json',
	// 		data: data,
	// 		success: function(json) {
	// 			$('div.overlay').remove();
	// 			alert('Data successfully saved');
	// 		},
	// 		error: function() {
	// 			$('div.overlay').remove();
	// 			alert('Something wrong, please contact the administrators');
	// 		}
	// 	});
	// });

	$('#formInputNews').submit(function(e){
		$('.news.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            e.preventDefault(); 
                 $.ajax({
                     url: siteUrl+'news/input_action',
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