<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $full_name = $_POST["full_name"];
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $conf_password = $_POST["confirm_password"];

    echo $full_name;
    echo $username;
    echo $email;
    echo $password;
    echo $conf_password;
}



$conn = new mysqli("localhost", "root", "root", "users");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$stmt = $conn->prepare("INSERT INTO users (full_name, username, email, password) VALUES (?, ?, ?, ?)");
$stmt->bind_param("ssss", $full_name, $username, $email, $password);

if ($stmt->execute()) {
    echo "User inserted successfully";
    header("Location: ../");

} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();

?>
