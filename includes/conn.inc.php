<?php

$serverName = "db"; // This should match the service name defined in your docker-compose.yml
$dbUsername = "root"; // MySQL root user (as defined in docker-compose.yml)
$dbPassword = "password"; // MySQL root password (as defined in docker-compose.yml)
$dbName = "withu"; // Database name

$conn = mysqli_connect($serverName,  $dbUsername, $dbPassword, $dbName);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    echo "Connected to the database successfully!";
}
