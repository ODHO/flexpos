<?php 
$viewEvent = new EventController();
$eventss = $viewEvent->fetchCalendarEvents();

// $eventsJSON = json_encode($eventss);
// print_r($eventsJSON);

$events = []; 

foreach ($eventss as $event) {
  // Create a new object with the required keys
  $formattedEvent = [
      'title' => $event['event_name'],
      'start' => $event['start_date'],
      'end' => $event['end_date'],
      'location' => $event['location'],
      'description' => $event['description']
  ];

  $events[] = $formattedEvent;
}
$eventsJSON = json_encode($events);

?>



<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
      headerToolbar: {
    left: 'prev,next',
    center: 'title',
    right: 'timeGridWeek' // user can switch between the two
  },
      
      events: <?php echo $eventsJSON; ?> ,
      eventContent: function(info) {
          // Customize the event content
          return {
              html: '<b>' + info.event.title + '</b><br>' +
                    '<p><strong>Description:</strong> ' + info.event.extendedProps.description + '</p>' +
                    '<p><strong>Location:</strong> ' + info.event.extendedProps.location + '</p>'
          };
      }
    
    });
    calendar.render();
    // calendar.updateSize();
  });
  
</script>

<span class=""><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalAddEvent" data-dismiss="modal">Add Event</button></span>


    <div id='calendar'></div>
 




    <!-- <form method="POST" role="form" class="addevent">
    Event Title: <input type="text" name="title"><br>
    Start Date: <input type="datetime-local" name="start"><br>
    End Date: <input type="datetime-local" name="end"><br>
    Location: <input type="text" name="location"><br>
    Description: <input type="text" name="desc"><br>
    <input type="submit" value="Add Event">
</form> -->

<!-- Modal -->
<div id="modalAddEvent" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <form role="form" method="POST">
        <div class="modal-header" style="background: #489ee7; color: #fff">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Event</h4>
        </div>
        <div class="modal-body">
          <div class="box-body">

            <!--Input name -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input class="form-control input-lg" type="text" name="title" placeholder="Write Event Title" required>
              </div>
            </div>

            <!--Input id document -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-key"></i></span>
                <input class="form-control input-lg" type="datetime-local"  name="start"  required>
              </div>
            </div>

            <!--Input email -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                <input class="form-control input-lg" type="datetime-local"  name="end"  required>
              </div>
            </div>

            <!--Input phone -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                <input class="form-control input-lg" type="text" name="location" placeholder="Location" required>
              </div>
            </div>

            <!--Input address -->
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                <input class="form-control input-lg" type="text" name="desc" placeholder="Desc" required>
              </div>
            </div>


            

          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-success">Save Event</button>
        </div>
      </form>

      
<?php

$saveEvent = new EventController();
$saveEvent->addEvent();

?>
    </div>

  </div>
</div>









