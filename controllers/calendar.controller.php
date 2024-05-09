<?php
// include 'EventModel.php';
// $eventModel = new EventModel();

class EventController {
    // private $eventModel;

    // public function __construct() {
    //     $this->eventModel = new EventModel();
    // }

    // public function displayCalendar($date) {
        // Fetch events from the model
        // $events = EventModel::getEvents($date);
        // $eventModel = new EventModel();
// $events = $eventModel->getEvents($date);


        // Generate calendar view
        // $calendarHTML = $this->generateCalendar($date, $events);

        // Include any other logic you might need here

        // Display the calendar view
        // echo $calendarHTML;
    // }

    private function generateCalendar($date, $events) {
        $timestamp = strtotime($date);
        $month = date('m', $timestamp);
        $year = date('Y', $timestamp);
        $days_in_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);
        $first_day = date("N", mktime(0, 0, 0, $month, 1, $year));

       
    }

    // Inside EventController class

public function addEvent() {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Retrieve form data
        if(isset($_POST["title"])){
        $title = $_POST['title'];
        $start = $_POST['start'];
        $end = $_POST['end'];
        $location = $_POST['location'];
        $desc = $_POST['desc'];

        // Add event to the model
        // $events = EventModel::getEvents($date);
        $eventModel = new EventModel();
        $eventModel->addEvent($title, $start, $end, $location, $desc);
        
        // Redirect back to the calendar view
        echo'<script>

				// localStorage.removeItem("range");

				swal({
					  type: "success",
					  title: "The event has been succesfully added",
					  showConfirmButton: true,
					  confirmButtonText: "Close"
					  }).then((result) => {
								if (result.value) {

								window.location = "calendar";

								}
							})

				</script>';
        exit();
        }
    }
}
public function UpdateEvent() {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Retrieve form data
        if(isset($_POST["title"])){
        $eventId = $_POST['eventId'];
        $title = $_POST['title'];
        // $start = $_POST['start'];
        // $end = $_POST['end'];
        $location = $_POST['location'];
        $desc = $_POST['desc'];

        // Add event to the model
        // $events = EventModel::getEvents($date);
        $eventModel = new EventModel();
        $eventModel->updateEvent($eventId, $title, $location, $desc);
        
        // Redirect back to the calendar view
        echo'<script>

				// localStorage.removeItem("range");

				swal({
					  type: "success",
					  title: "The event has been succesfully updated",
					  showConfirmButton: true,
					  confirmButtonText: "Close"
					  }).then((result) => {
								if (result.value) {

								window.location = "calendar";

								}
							})

				</script>';
        exit();
        }
    }
}

public function fetchCalendarEvents() {
    // Call the model function to get events
    $eventModel = new EventModel();
    $events = $eventModel->getCalendarEvents();

    // Return the events
    return $events;
}

}


// $eventController = new EventController();
// $current_date = isset($_GET['date']) ? $_GET['date'] : date('Y-m-d');
// $eventController->displayCalendar($current_date);
