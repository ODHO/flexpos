<?php
// Include the EventController and necessary classes
require_once 'EventController.php';
require_once 'EventModel.php';

// Create an instance of the EventController
$eventController = new EventController();

// Call the addEvent() method to handle form submission
$eventController->addEvent();

// Redirect back to the calendar view
// header("Location: index.php");
exit();

