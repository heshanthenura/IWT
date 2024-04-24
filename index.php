<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
    <div id="heading-wrapper">
    <div id="heading">
        <div id="logo"><img src="images/airline-logo.jpg" alt="" srcset=""></div>
        <div id="slogan"><h1>Your dream trip,a few clicks away</h1></div>
        <div id="profile-wrapper">
        <?php
                session_start();
                if (isset($_SESSION["username"])) {
                    echo '<img src="images/user-circle.png" alt=""><div id="login-logout"><a href="./php/logout.php">Logout</a></div>';
                } else {
                    echo '<img src="images/user-circle.png" alt=""><div id="login-logout"><a href="login.php">Login</a>/<a href="signup.php">Sign Up</a></div>';
                }
                ?>
                </div>
    </div>
    </div>
    <div id="navigation">
        <div class="nav-link-wrap"><a href="index.php">Home</a></div>
        <div class="nav-link-wrap"><a href="profile.php">Profile</a></div>
        <div class="nav-link-wrap"><a href="contact.php">Contact Us</a></div>
        <div class="nav-link-wrap"><a href="about.php">About Us</a></div>
    </div>

</body>
</html>