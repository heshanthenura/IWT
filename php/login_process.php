<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  
    $conn = new mysqli("localhost", "root", "root", "users");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }


    $username = $_POST["username"];
    $password = $_POST["password"];


    $query = "SELECT * FROM users WHERE username = ?";


    $stmt = $conn->prepare($query);
    if ($stmt === false) {
        die("Error preparing statement: " . $conn->error);
    }

    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();


    if ($result->num_rows == 1) {
        $user = $result->fetch_assoc();
        if ($password === $user["password"]) { 
            $_SESSION["username"] = $user["username"];
            $_SESSION["role"] = $user["role"];
            echo "login successfully";
            header("Location: /IWT/");
            exit;
        } else {
            echo "Invalid password";
        }
    } else {
        echo "User not found";
    }


    $stmt->close();
    $conn->close();
}
?>
