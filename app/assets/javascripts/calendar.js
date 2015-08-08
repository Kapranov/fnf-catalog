// require jquery-ui
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

});
