/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/assets/js/admin/about_us.js
 */

var uploadImage = function(image) {
	var data = new FormData();

	data.append("image", image);
	data.append('action', 'store_image');
	$.ajax({
		url: './about_us/store_image',
		cache: false,
		contentType: false,
		processData: false,
		data: data,
		type: 'post',
		dataType: 'json',
		success: function (url) {
			if (url.success) {
				var image = $('<img>').attr('src', url.url);
			
				$('.textarea').summernote("insertNode", image[0]);
			} else {
				alert('The image you are attempting to upload exceedes the maximum height or width');
			}
		}
	});
};

$(document).ready(function() {
	$('.textarea').summernote({
		callbacks: {
			onImageUpload: function (image) {
				uploadImage(image[0]);
			}
		}
	});

	$('.btn.btn-primary').click(function(){
		$('.about_us.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
		
		var form = $('#formAboutUs');
		var data = form.serializeArray();
		
		$.ajax({
			url: './about_us/store_data',
			method: 'POST',
			dataType: 'json',
			data: data,
			success: function(json) {
				$('div.overlay').remove();
				alert('Data successfully saved');
			},
			error: function() {
				$('div.overlay').remove();
				alert('Something wrong, please contact the administrators');
			}
		});
	});
});