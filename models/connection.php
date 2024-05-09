<?php
class Connection {
    private static $dbHost = 'localhost';
    private static $dbName = 'posystem';
    private static $dbUser = 'root';
    private static $dbPass = '';

    public static function connect() {
        $pdo = new PDO("mysql:host=".self::$dbHost.";dbname=".self::$dbName, self::$dbUser, self::$dbPass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $pdo;
    }
}
