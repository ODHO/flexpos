<?php
require_once 'connection.php';

class EventModel {
    private $pdo;

    public function __construct() {
        $this->pdo = Connection::connect();
    }

    public function getCalendarEvents() {
        $events = array();

        // Prepare SQL statement
        $query = "SELECT event_name, DATE(start_date) AS start_date, DATE(end_date) AS end_date, location, description FROM events";

        $stmt = $this->pdo->prepare($query);
        // $stmt->bindParam(':start', $start);
        // $stmt->bindParam(':end', $end);
        $stmt->execute();

        // Fetch events from the database
        $events = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $events;
    }


    // Inside EventModel class

public function addEvent($title, $start, $end, $location, $desc) {
    // Prepare SQL statement
    $query = "INSERT INTO events (event_name, start_date, end_date, location, description) VALUES (:title, :start, :end, :location, :desc)";
    $stmt = $this->pdo->prepare($query);

    // Bind parameters
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':start', $start);
    $stmt->bindParam(':end', $end);
    $stmt->bindParam(':location', $location);
    $stmt->bindParam(':desc', $desc);

    // Execute SQL
    $stmt->execute();
}
public function updateEvent($eventId, $title, $location, $desc) {
  
    $query = "UPDATE events SET event_name = :title, location = :location, description = :desc WHERE id = :eventId";
    $stmt = $this->pdo->prepare($query);

    $stmt->bindParam(':eventId', $eventId);
    $stmt->bindParam(':title', $title);
    $stmt->bindParam(':location', $location);
    $stmt->bindParam(':desc', $desc);

    $stmt->execute();
}

  
}

