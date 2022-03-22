 /*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/assets/js/admin/cuctomer.js
 */

var uploadImage = function(image) {
    var data = new FormData();

    data.append("image", image);
    data.append('action', 'store_image');
    $.ajax({
        url: './pages/store_image',
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

    $('#txtTitle').on('keyup change',function(){
        var link = $('#txtTitle').val();
            rep = link.replace(/[^\w\s]/gi,'_').replace(/ /g,"").toLowerCase();
           
        $('#txtUrl').val('pages/detail/'+rep);
    });

    $('#formInputPages').submit(function(e){
        $('.customer.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            e.preventDefault(); 
         $.ajax({
             url: siteUrl+'pages/input_action',
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