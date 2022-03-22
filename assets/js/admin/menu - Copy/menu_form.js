 /*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/assets/js/admin/about_us.js
 */

var uploadImage = function(image) {
    var data = new FormData();

    data.append("image", image);
    data.append('action', 'store_image');
    $.ajax({
        url: './menu/store_image',
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

    if($('#txt_id_menu').val() !== '')
    {
         var id_parent_menu = $('#txt_id_parent').val();
         var is_admin = $('#txt_position').val();
        
         if(is_admin){
            $.ajax({
                type:'POST',
                url: siteUrl+'menu/get_menu_option',
                data:{'is_admin':is_admin,'id_parent_menu':id_parent_menu},
                success:function(html){
                    console.log(html)
                    $('#txt_parent_id').html(html);
                    
                }
            }); 
        }else{
            $('#txt_parent_id').html('<option value="">Pilih Position Terlebih Dahulu</option>');
           
        }
    }

    $('#txt_position').on('change',function(){
        var id_pos = $(this).val();
       
        if(id_pos){
            $.ajax({
                type:'POST',
                url: siteUrl+'menu/get_menu_option',
                data:'is_admin='+id_pos,
                success:function(html){
                    $('#txt_parent_id').html(html);
                    
                }
            }); 
        }else{
            $('#txt_parent_id').html('<option value="">Pilih Position Terlebih Dahulu</option>');
           
        }
    });



    $('#is_admin').on('change',function(){
       //  var new_href = window.location.href + "?is_admin="+ $('#is_admin').val();
       location.reload(true);
       // if(window.location.hostname == "localhost"){
       //     window.location.href = window.location.href + "?single";
       //  } 
       // window.history.replaceState(null, null, "/another-new-url");
    });

    $('.textarea').summernote({
        callbacks: {
            onImageUpload: function (image) {
                uploadImage(image[0]);
            }
        }
    });

    $('#formInputMenu').submit(function(e){
        // $('.menu.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            e.preventDefault(); 
         $.ajax({
             url: siteUrl+'menu/input_action',
             type:'post',
             data :new FormData(this),
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