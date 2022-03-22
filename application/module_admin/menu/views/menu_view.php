<?php
/*!
 * @package Koperasi Bintang Tanjung Madani
 * @copyright Koperasi Bintang Tanjung Madani
 * @author Sikelopes
 * @version 1.0
 * @access Public
 * @path /bintangtanjungmadani/application/module_admin/home/views/home_view.php
 */

defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="row box">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><?=$pages_title?></h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4">
                        <h4>Group List</h4>
                        <div class="list-group" id="listGroup">
                            <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#" aria-controls="profile" data-id="Y">Backend</a>
                            <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#" aria-controls="profile" data-id="N">Frontend</a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <table class="collaptable table table-striped" id="example1">
                            <thead style="background-color: #3c8dbc;">
                                <th scope="col"><a href="javascript:void(0);" class="act-button-expand" style="color: white;"><i class="fa fa-angle-double-down"></i></a></th>
                                <th scope="col">Caption</th>
                                <th scope="col">URL</th>
                                <th scope="col">Icon</th>
                                <th scope="col">Description</th>
                                <th scope="col">Seq</th>
                                <th scope="col" style="text-align:center;width: 100px;">Action</th>
                            </thead>
                            <tbody></tbody>
                            <tfoot>
                                <tr>
                                    <td>
                                        <button type="button" id="btnAdd" class="btn btn-primary" data-admin="" onClick="show_modal(data = false, title= 'Add', mode = 'add')" disabled=""><i class="fa fa-plus"></i> Add</button>                        
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>