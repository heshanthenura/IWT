<?php
session_start();

if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit;
}
$conn = new mysqli("localhost", "root", "root", "iwt");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT username, email, full_name FROM users WHERE username = ?";
$stmt = $conn->prepare($sql);
if (!$stmt) {
    die("Error preparing statement: " . $conn->error);
}
$stmt->bind_param("s", $_SESSION["username"]);
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_assoc();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
<body>
<form method="post" action="./php/update_process.php">
    <h1>Hello, <?php echo $user['full_name']; ?></h1>
<label for="full_name">Full Name:</label><br>
        <input type="text" id="full_name" name="full_name" value="<?php echo $user['full_name']; ?>"><br>
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" value="<?php echo $user['username']; ?>" readonly><br>
        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email" value="<?php echo $user['email']; ?>"><br>
        <input type="submit" value="UPDATE">
    </form>

    <form action="./php/update_password.php" method="post">
        <h1>change password</h1>
        <input type="password" id="old_password" name="old_password">
        <input type="password" id="new_password" name="new_password">
        <input type="password" id="confNew_password" name="confNew_password">
        <input type="submit" value="Change Password">

    </form>

</body>
</html>
