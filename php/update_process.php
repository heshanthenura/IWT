<?php 
session_start();

if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}

$conn = new mysqli("localhost", "root", "root", "users");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>