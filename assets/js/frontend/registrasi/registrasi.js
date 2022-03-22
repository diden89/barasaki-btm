/*!
 * @package KBRT
 * @copyright Noobscript
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @link /btm_frontend/scripts/registrasi/registrasi.js
 */

$(document).ready(function() {
    $('#example').DataTable();
	 $('#birthdate').noobsdaterangepicker({
        // parentEl: "#" + popup[0].id + " .modal-body",
        showDropdowns: true,
        singleDatePicker: true,
        locale: {
            format: 'DD-MM-YYYY'
        }
    });
	$('#form_register').submit(function(e){
		// $('.company.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            e.preventDefault(); 
                 $.ajax({
                     url: site_url+'registrasi/do_register',
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