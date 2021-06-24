/*!
 * @package Barasaki Semesta
 * @copyright Barasaki Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/assets/js/admin/about_us.js
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

	$('#formInputProjects').submit(function(e){
		$('.project.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            e.preventDefault(); 
                 $.ajax({
                     url: siteUrl+'projects/input_action',
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