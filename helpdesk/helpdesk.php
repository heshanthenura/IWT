<?php
// Start the session
session_start();

// Check if the user is not logged in or is not a staff member
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
$sql = "SELECT t.ticket_id, u.full_name, t.arrivale, t.departure, t.destination, t.airline 
        FROM tickets_info t
        INNER JOIN users u ON t.username = u.username";

// Execute the query
$result = $conn->query($sql);

// Check if the query was successful
if (!$result) {
    die("Error executing the query: " . $conn->error);
}
?>

<!-- Your HTML code goes here -->


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

    <!-- Starting admin page HTML code and CSS code -->
    <div class="helpDesk-container">
        <div class="box" style="background-color: rgb(39, 108, 181);">
            <h2>Total Passengers</h2>
            <p>250</p>
        </div>
        <div class="box" style="background-color: rgb(37, 228, 97);">
            <h2>Amount</h2>
            <p>$25,000</p>
        </div>
        <div class="box" style="background-color: rgb(255, 115, 64);">
            <h2>Flight</h2>
            <p>Flight XYZ123</p>
        </div>
        <div class="box" style="background-color: rgb(77, 157, 255);">
            <h2>Time</h2>
            <p id="departure-time"></p>
        </div>
    </div>

    <h2 style="text-align: center;">Today's Flights</h2>

    <table style="border: 1px;">
        <thead>
            <tr>
                <th>Ticket Id</th>
                <th>Name</th> 
                <th>Arrival</th>
                <th>Departure</th>
                <th>Destination</th>
                <th>Airline</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through the result set and output data -->
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["ticket_id"] . "</td>";
                    echo "<td>" . $row["full_name"] . "</td>";
                    echo "<td>" . $row["arrivale"] . "</td>";
                    echo "<td>" . $row["departure"] . "</td>";
                    echo "<td>" . $row["destination"] . "</td>";
                    echo "<td>" . $row["airline"] . "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='6'>No flights found</td></tr>";
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

    <script>
        // Function to update departure time
        function updateDepartureTime() {
            var now = new Date();
            var departureTimeElement = document.getElementById("departure-time");
            departureTimeElement.textContent = now.toLocaleString();
        }

        // Update departure time initially
        updateDepartureTime();

        // Update departure time every second
        setInterval(updateDepartureTime, 1000);
    </script>
</body>
</html>
