/*!
 * @package PT. Barasaki Sinergi Semesta
 * @copyright PT. Barasaki Sinergi Semesta
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /barasaki-btm/assets/js/admin/products.js
 */

var uploadImage = function(image) {
    var data = new FormData();

    data.append("image", image);
    data.append('action', 'store_image');
    $.ajax({
        url: siteUrl+'products/store_image',
        cache: false,
        contentType: false,
        processData: false,
        data: data,
        type: 'post',
        dataType: 'json',
        success: function (url) {
            if (url.success) {
                var image = $('<img>').attr('src', url.url);
            
                $('#txtContent2').summernote("insertNode", image[0]);
            } else {
                alert('The image you are attempting to upload exceedes the maximum height or width');
            }
        }
    });
};

function removedata(obj){
    var self = $(obj);
    self.parent().parent().remove();

}

$(document).ready(function() {
    $('#txtContent1').summernote({
        callbacks: {
            onImageUpload: function (image) {
                uploadImage(image[0]);
            }
        }
    });
    $('#txtContent2').summernote({
        callbacks: {
            onImageUpload: function (image) {
                uploadImage(image[0]);
            }
        }
    });
    
    $('#formInputProducts').submit(function(e){
        $('.products.box').append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
            e.preventDefault(); 
          
         $.ajax({
             url: siteUrl+'products/input_action',
             type:"post",
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

 // dynamically form
    $(".add-input").click(function(){ 
       
        var inner = '<tr>';
        inner += '<td><span>Sort :</span></td>';
        inner += '<td><input type="text" name="sort[]" class="form-control" style="width: 50px"></td>';
        inner += '<td><input type="file" id="txtImg" name="txt_img[]"></td>';
        inner += '<td><button class="btn btn-default fa fa-trash remove-child" type="button" onclick="removedata(this)"></button></td>';
        inner += '</tr>';

        $('.multipleAdd').append(inner);
    });
});