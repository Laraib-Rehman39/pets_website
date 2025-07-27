<?php
// Include the database connection
include('db_connection.php');  // Ensure this file contains your database connection setup

// Start the session to handle user login state
session_start();

// Check if the form is submitted using POST method
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get form data and sanitize inputs
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    // SQL query to get user data from the database based on the username
    $sql = "SELECT * FROM users WHERE username='$username' LIMIT 1";
    $result = mysqli_query($conn, $sql);

    // Check if the user exists
    if (mysqli_num_rows($result) > 0) {
        $user = mysqli_fetch_assoc($result);

        // Verify the password using password_verify()
        if (password_verify($password, $user['password'])) {
            // Password is correct, start session and log the user in
            $_SESSION['user_id'] = $user['user_id'];  // Ensure correct column name
            $_SESSION['username'] = $user['username'];

            // Redirect to the dashboard or home page after successful login
            header('Location: index1.php');  // Ensure 'index1.php' is your actual home/dashboard page
            exit();
        } else {
            // Password is incorrect
            $error_message = "Invalid password. Please try again.";
        }
    } else {
        // Username does not exist
        $error_message = "No user found with that username.";
    }
}

// Close the connection (optional but recommended)
mysqli_close($conn);
?>