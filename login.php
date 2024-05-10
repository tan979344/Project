<?php
include_once "connection.php";

class Response {
}

$username = $_POST['username'];
$password = $_POST['password'];

$query = "SELECT * FROM user WHERE (username = '$username' AND password = '$password') || pin_enable = 0";
$result = mysqli_query($con, $query);

$response = new Response();

if (mysqli_num_rows($result) > 0) {
    // Login successful
    $row = mysqli_fetch_assoc($result);
    $response->success = 1;
    $response->message = "Login successful.";
    $response->password = $row['password'];
    $response->name = $row['name'];
    $response->pin_enable = $row['pin_enable'];
} else {
    // Login failed
    $response->success = 0;
    $response->message = "Invalid username or password.";
}

echo json_encode($response);

mysqli_close($con);
?>
