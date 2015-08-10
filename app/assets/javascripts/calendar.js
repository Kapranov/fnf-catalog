// require jquery-ui
//= require iCheck/icheck.min.js
//= require moment
//= require fullcalendar_engine/application
//= require ru
//= require uk
//= require lang-all

$(document).ready(function(){
  $('.calendar').fullCalendar(full_calendar_options);

  $('#new_event').click(function(event) {
    FullcalendarEngine.Form.display()
    event.preventDefault();
  });

  $('.i-checks').iCheck({
    checkboxClass: 'icheckbox_square-green',
    radioClass: 'iradio_square-green',
  });

});
