/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/assets/js/admin/about_us.js
 */

$(document).ready(function(){
 // lagi ngerjain ini
 
 
 function load_unseen_notification(view = '')
 {
  $.ajax({
   url: siteUrl+'home/get_new_message',
   method:"POST",
   data:{view:view},
   dataType:"json",
   success:function(data)
   {
    $('.messages-admin').html(data.notification);
    if(data.unseen_notification > 0)
    {
     $('.count').html(data.unseen_notification);
    }
   }
  });
 }
 
 load_unseen_notification();

 $(document).on('click', '.dropdown-toggle', function(){
  $('.count').html('');
  load_unseen_notification('yes');
 });
 
 setInterval(function(){ 
  load_unseen_notification();; 
 }, 50000);
 
});
