<?php
// Include your database connection file
include 'database.php';

// Function to get username by user ID
function getUsername($userID) {
    global $conn; // assuming $conn is your database connection variable

    // SQL query to fetch username by user ID (Replace 'users' with your actual table name and 'username_column' with the column name storing usernames)
    $sql = "SELECT username_column FROM users WHERE user_id = $userID";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Fetch username
        $row = $result->fetch_assoc();
        return $row["username_column"];
    } else {
        return "No username found";
    }
}

// Check if user is logged in and get their user ID from session
session_start();
if(isset($_SESSION['user_id'])) {
    $userID = $_SESSION['user_id'];
    // Get username based on user ID
    $username = getUsername($userID);
    echo $username; // Output the username
} else {
    echo "User is not logged in";
}
?>
