// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// $(document).ready(function() {
  $("#join-group").on('click', function(e) {
    e.preventDefault();
    var id = $('#user-id').val();
    var group_id = $('#group-id').val();
    $.ajax({
        type: "PATCH",
        url: '/users/' + id,
        data: {id:id,user:{group_id:group_id}},
    }).done(function(data) {
        var newUser = data.username;
        $('body').append("<p>" + newUser + " has joined the group.</p>");
    });
  });
// });
