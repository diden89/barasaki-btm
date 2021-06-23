$(document).ready(function() {

	$('#sendTellUs').on('submit', function(event){
		event.preventDefault();
		var form = $(this).serialize();
			capt = $('#sec_code').val();
			incode = $('#capcode').val();
		if(capt.toUpperCase() === incode.toUpperCase())
		{
			$.ajax({
				url: siteUrl+"home/send_message",
				method:"POST",
				data:form,
				dataType : 'json',
				success:function(response)
				{
					if(response.status)
					{
						alert(response.msg);
						$('#sendTellUs')[0].reset();
						$.ajax({
							dataType :'json',
							url:siteUrl+'home/get_captcha',
							success:function(data){
							 $('.captcha-img').html(data.image);
							 $('#sec_code').val("");
							}
						}); 
                        // window.location.replace(response.url);
					}
				}
			});
		}
		else
		{
			alert('Kode Keamanan Salah');
			$.ajax({
				dataType :'json',
				url:siteUrl+'home/get_captcha',
				success:function(data){
				 $('.captcha-img').html(data.image);
				 $('#capcode').val(data.word);
				 $('#sec_code').val("");
				}
			}); 
		}
		
	});
	$('.reload-captcha').click(function(event){
         event.preventDefault();
         $.ajax({
             url:siteUrl+'contact/get_captcha',
             success:function(data){
                 $('.captcha-img').replaceWith(data);
             }
         });            
      });

	$('#comment_form').on('submit', function(event){
		console.log('kacau')
		event.preventDefault();
		var form = $(this).serialize();
			capt = $('#sec_code').val();
			incode = $('#capcode').val();
		if(capt.toUpperCase() === incode.toUpperCase())
		{
			$.ajax({
				url: siteUrl+"contact/send_message",
				method:"POST",
				data:form,
				dataType : 'json',
				success:function(response)
				{
					if(response.status)
					{
						alert(response.msg);
						$('#comment_form')[0].reset();
						$.ajax({
							dataType :'json',
							url:siteUrl+'contact/get_captcha',
							success:function(data){
							 $('.captcha-img').html(data.image);
							 $('#sec_code').val("");
							}
						}); 
                        // window.location.replace(response.url);
					}
				}
			});
		}
		else
		{
			alert('Kode Keamanan Salah');
			$.ajax({
				dataType :'json',
				url:siteUrl+'home/get_captcha',
				success:function(data){
				 $('.captcha-img').html(data.image);
				 $('#capcode').val(data.word);
				 $('#sec_code').val("");
				}
			}); 
		}
		
	});


});