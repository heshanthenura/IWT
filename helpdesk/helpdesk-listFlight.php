<?php
session_start();
if (!isset($_SESSION["username"]) || $_SESSION["role"] !== "HELPDESK") {
    // Redirect to the login page
    header("Location: ../login.php");
    exit;
}

// Establish a database connection
$conn = new mysqli("localhost", "root", "root", "users");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Define SQL query to fetch data
$sql = "SELECT * FROM available_flights";

// Execute the query
$result = $conn->query($sql);

        
$conn->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../css/helpdesk/helpDesk.css" type="text/css">

    <script src="myScript.js"></script>

</head>
<body>

    <!-- Heading code lines -->
    <div id="heading">
        <img src="../images/airline-logo.jpg" width="100px" height="100px" class="logo">

        <h1 class="mainHeadline">Your Dream trip, a few clicks away</h1>
        
        <a href="../php/logout.php">
            <img class="userLogo" width="50px" height="50px" src="../images/user-circle.png">
            <span>Logout</span>
        </a>
    </div>



    <div class="navbar">
        <h2>Helpdesk Panel</h2>
        <a href="helpdesk.php">Dashboard</a>
        <a href="helpdesk-listFlight.php">Manage Airline</a>
    </div>





    <h2 style="text-align: center;">Flight List</h2>

    
    <table style="border: 1px;">
        <thead>
            <tr>
                <th>Id</th>
                <th>Arrival</th>
                <th>Departure</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Airline</th>
                <th>Seats</th>
                <th>Price</th>
                <th>Duration</th>
            </tr>
        </thead>
        <tbody>
         
            <?php
        
            if ($result->num_rows > 0) {
                // Output data of each row
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["id"] . "</td>";
                    echo "<td>" . $row["arrival"] . "</td>";
                    echo "<td>" . $row["departure"] . "</td>";
                    echo "<td>" . $row["source"] . "</td>";
                    echo "<td>" . $row["destination"] . "</td>";
                    echo "<td>" . $row["airline"] . "</td>";
                    echo "<td>" . $row["seats"] . "</td>";
                    echo "<td>" . $row["price"] . "</td>";
                    echo "<td>" . $row["duration"] . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='9'>No flights found</td></tr>";
            }
 
            ?>

        </tbody>
    </table>

    <div class="footer">
        <img src="../images/airline-logo.jpg" alt="Airline Logo" width="100px" height="100px" class="logo">
    
        <div class="content-wrapper">
            <h1 class="bottomHeadline">Follow Us On</h1>

            <div class="socialMedia-icon-container">
                <img src="../images/icon-facebook.png" alt="Facebook" width="30px" height="30px">
                <img src="../images/icon-twitter.png" alt="Twitter" width="30px" height="30px">
                <img src="../images/icon-instagram.png" alt="Instagram" width="30px" height="30px">
                <img src="../images/icon-linkedin.png" alt="LinkedIn" width="30px" height="30px">
            </div>
        </div>

        <div class="email-container">
            <p>Subscribe for our latest offers...</p>
            <input type="search" name="a" placeholder="Email address">
            <img src="../images/icon-email.png" alt="email" width="30px" height="30px">
            <p>Teams of use.Privacy Policy.Cookies</p>
        </div>

    </div>



</body>
</html>
