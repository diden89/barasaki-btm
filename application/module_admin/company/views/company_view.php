<?php
/*!
 * @package Koperasi Bintang tanjuang Madani
 * @copyright Koperasi Bintang tanjuang Madani
 * @author Algaza
 * @version 1.0
 * @access Public
 * @path /bintangtanjuangmadani/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section class="company box">
  <div class="box-header">
    <h3 class="box-title">Company</h3>
  </div>
  <div class="box-body pad">
    <form id="formInputCompany" enctype='multipart/form-data'>
      <div class="form-group">
        <label for="txtFullname">Company Name:</label>
        <input type="text" class="form-control" id="txtFullname" name="txt_fullname" placeholder="Enter Company Name" value="<?php echo $data->fullname; ?>">
        <input type="hidden" name="id_company" value="<?php echo $data->id; ?>">
      </div>
      <div class="form-group">
        <label for="txtOwner">Owner:</label>
        <input type="text" class="form-control" id="txtOwner" name="txt_owner" placeholder="Enter Owner Name" value="<?php echo $data->owner; ?>">
      </div>
      <div class="form-group">
        <label for="txtAddress">Address:</label>
        <textarea id="txtAddress" name="txt_address" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $data->address; ?></textarea>
      </div>
      <div class="form-group">
        <label for="txtMetaDesc">Meta Description:</label>
        <textarea id="txtMetaDesc" name="txt_meta_desc" class="textarea" placeholder="Enter content" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $data->meta_desc; ?></textarea>
      </div>
      <div class="form-group">
        <label for="txtMetaKey">Meta Keyword:</label>
        <input type="text" class="form-control" id="txtMetaKey" name="txt_meta_key" placeholder="Enter Keyword" value="<?php echo $data->meta_key; ?>">
      </div>
      <div class="form-group">
        <label for="txtImg">Favicon:</label>
          <input type="file" id="txtImg" name="txt_fav" value='<?php echo (isset($data->favicon)) ? $data->favicon : ""; ?>'>
          <img src="<?php echo front_url().$data->favicon;?>" width="300px">
         <input type="hidden" name="txt_img_old" value="<?php echo (isset($data->favicon)) ? $data->favicon : ""; ?>">
      </div>
        <div class="form-group">
            <label for="txtImg_logo">Company Logo:</label>
            <input type="file" id="txtImgLogo" name="txt_img_logo" value='<?php echo (isset($data->logo)) ? $data->logo : ""; ?>'>
            <img src="<?php echo front_url().$data->logo;?>" width="300px">
            <input type="hidden" name="txt_img_logo_old" value="<?php echo (isset($data->logo)) ? $data->logo : ""; ?>">
        </div>
       <div class="container" id="multipleAdd">
          <div>
            <label for="txtImg">Info Contact:</label>
          </div>
        <div class="row">
          <div class="col-sm-2">
            <select name="c_type[]" class="form-control">
              <option value="">-- Select Contact Type --</option>
              <?php
                foreach($contact_type as $ct => $tc)
                {
                    echo '<option value="'.$tc->c_type.'">'.$tc->description.'</option>';
                }
               ?>
            </select>
          </div>
          <div class="col-sm-2">
             <input type="text" class="form-control" placeholder="Contact Detail" name="c_detail[]" id="c_number">
             <input type="hidden" name="c_id[]" id="c_id" value="">
          </div> 
          <div class="col-sm-3">
            <input type="text" class="form-control" placeholder="URL" name="c_url[]" id="url">
          </div> 
          <div class="col-sm-4">
             <input type="text" class="form-control" placeholder="Message" name="c_message[]" id="message">
          </div> 
          <div class="col-sm-1">
            <button class="btn btn-success add-input fa fa-plus" type="button"></button>
          </div>
        </div>
        <?php 
          if(count($contact) > 0)
          {
            foreach($contact as $c=>$t){
              // $sel = 
            ?>
            <div class="row">
              <div class="col-sm-2">
                 <select name="c_type[]" class="form-control">
                    <option value="">-- Select Contact Type --</option>
                   <?php
                    foreach($contact_type as $ct => $tc)
                    {
                      $sel = ($tc->c_type == $t->c_type) ? 'selected' : '';
                        echo '<option value="'.$tc->c_type.'" '.$sel.'>'.$tc->description.'</option>';
                    }
                   ?>
                  </select>
              </div>
              <div class="col-sm-2">
                 <input type="text" class="form-control" placeholder="Contact Detail" name="c_detail[]" id="c_number" value="<?php echo $t->c_detail;?>">
                 <input type="hidden" name="c_id[]" id="c_id" value="<?php echo $t->id;?>">
                
              </div> 
              <div class="col-sm-3">
                <input type="text" class="form-control" placeholder="URL" name="c_url[]" id="url" value="<?php echo $t->c_url;?>">
              </div> 
              <div class="col-sm-4">
                 <input type="text" class="form-control" placeholder="Message" name="c_message[]" id="message" value="<?php echo $t->c_message;?>">
              </div> 
              <div class="col-sm-1">
                <button class="btn btn-default fa fa-trash remove-child" type="button" onclick="deletedata(<?php echo $t->id; ?>)"></button>
              </div>
            </div>
            <?php
          }
          }
        ?>

      </div>
  </div>
  <div class="box-footer">
    <button type="submit" class="btn btn-primary" id="submitCompany">Submit</button>
  </div>
    </form>

</section>
