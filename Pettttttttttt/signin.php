<?php
// Include the database connection
include('db_connection.php');  // Ensure this file contains your database connection setup

// Check if the form is submitted using POST method
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data and sanitize inputs
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    // Encrypt the password before storing it in the database
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // SQL query to check if the username or email already exists
    $check_user_query = "SELECT * FROM users WHERE username='$username' OR email='$email'";
    $result = mysqli_query($conn, $check_user_query);
    
    // If username or email already exists, show an error message
    if (mysqli_num_rows($result) > 0) {
        echo "Username or Email already exists. Please try again.";
    } else {
        // SQL query to insert new user into the database
        $sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$hashed_password')";
        
        // Check if the query was successful
        if (mysqli_query($conn, $sql)) {
            echo "Signup successful!";
        
            // Redirect to the login page after successful signup
            header('Location: signin.php');  // Make sure to change this to your actual login page URL
            exit();
        } else {
            echo "Error: " . mysqli_error($conn); // Show an error if insertion fails
        }
    }
}

// Close the connection
mysqli_close($conn);
?>