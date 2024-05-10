<?php
include_once "connection.php";
$result = mysqli_query($con, "SELECT * FROM `window`") or trigger_error(die(json_encode($response)), E_USER_ERROR);
if ($result->num_rows > 0) {
    $users = array(); // Array to store all users
    while ($row = $result->fetch_assoc()) {
        $users[] = $row; // Add each row to the users array
    }
    echo json_encode($users); // Encode the entire array as JSON
}
?>
