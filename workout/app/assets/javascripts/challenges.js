// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

  $('select').change(function() {
    if ($('#frequency').val() === 'custom') {
      $('.day-checkbox').show();
    } else {
      $('.day-checkbox').hide();
    }
  });

$('.record_activity').click(function(){
  var challenge_id = $(this).attr('id').slice(16);
  $.ajax({
    type: 'post',
    url: '/activities',
    data: {
      activity: {
        challenge_id: challenge_id
      }
    }
  }).done(function(data) {
  });
});

