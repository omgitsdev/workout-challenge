// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs  
//= require foundation
//= require turbolinks
//= require angular
//= require angular-resource
//= require angular-animate
//= require_tree ./angular


$(function(){ $(document).foundation(); });
$(document).ready(function() {
  $("#join-group").on('click', function(e) {
    console.log('a');
    e.preventDefault();
    var id = $('#user-id').val();
    var group_id = $('#group-id').val();
    $.ajax({
        type: "PATCH",
        url: '/users/' + id,
        data: {id:id,user:{group_id:group_id}},
    }).done(function(data) {
        console.log(data);
    });
  });
});