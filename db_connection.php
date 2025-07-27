<?php
$servername = "localhost";
$username = "laraib";
$password = "laraib@38403";
$dbname = "my_database";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

mysqli_select_db($conn , 'my_database');
// Close connection
$conn->close();
?>

