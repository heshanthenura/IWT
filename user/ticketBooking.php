<?php
// Establish connection to the database
$conn = new mysqli("localhost", "root", "root", "users");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to retrieve data from the available_flight table
$sql = "SELECT id, arrival, departure, source, destination, airline, price FROM available_flights";
$result = $conn->query($sql);
$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link rel="stylesheet" href="../css/user/ticketBooking.css" type="text/css">
</head>
<body>

    <!-- Heading code lines -->
    <div id="heading">
        <img src="../images/airline-logo.jpg" width="100px" height="100px" class="logo">

        <h1 class="mainHeadline">Your Dream trip, a few clicks away</h1>
        
        <a href="#">
            <img class="userLogo" width="50px" height="50px" src="../images/user-circle.png">
            <span>Login/SignUp</span>
        </a>
    </div>



    <!-- Ticket booking -->

    <h1 id="airline">Airline Ticket Booking</h1>
    

    <!-- table for ticket booking -->
    <table style="border: 1px;">
    <thead>
        <tr>
            <th>Id</th>
            <th>Arrival</th>
            <th>Departure</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Airline</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
            <?php
            // Check if there are any rows returned
            if ($result->num_rows > 0) {
                // Output data of each row
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["id"] . "</td>";
                    echo "<td>" . $row["arrival"] . "</td>";
                    echo "<td>" . $row["departure"] . "</td>";
                    echo "<td>" . $row["source"] . "</td>";
                    echo "<td>" . $row["destination"] . "</td>";
                    echo "<td>" . $row["airline"] . "</td>";
                    echo "<td>" . $row["price"] . "</td>";
                    echo "<td><button onclick='showBookingDetails(" . $row["id"] . ", \"" . $row["source"] . "\", \"" . $row["destination"] . "\", " . $row["price"] . ")'>Select</button></td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='8'>No flights available</td></tr>";
            }
            ?>
        </tbody>
    </table>


    <div id="wrapper-container" >
    <div class="form-wrapper">

        <form action="submit_booking.php" method="POST">
            <label for="payment_method">Payment Method:</label><br>
            <select id="payment_method" name="payment_method">
                <option value="credit_card">Credit Card</option>
                <option value="credit_card">Debit Card</option>
                <!-- Only credit card option -->
            </select><br><br>

            <label for="card_number">Card Number:</label><br>
            <input type="text" id="card_number" name="card_number" placeholder="Enter card number" required><br><br>

            <label for="expiry_date">Expiration Date:</label><br>
            <input type="text" id="expiry_date" name="expiry_date" placeholder="MM/YY" required><br><br>

            <label for="cvv">CVV:</label><br>
            <input type="text" id="cvv" name="cvv" placeholder="CVV" required><br><br>

            <label for="card_holder_name">Cardholder Name:</label><br>
            <input type="text" id="card_holder_name" name="card_holder_name" placeholder="Enter cardholder name" required><br><br>

        </form>
    </div>



    <!-- booked details show -->
    <div class="details-wrapper">
        <div class="container">
            <div class="booking-details">
                <h2>Booking Details</h2>
                <p><strong>From:</strong> <span id="from">..</span></p>
                    <p><strong>To:</strong> <span id="to">..</span></p>
                    <p><strong>Trip Type:</strong> Round Trip</p>
                    <p><strong>Passenger Count:</strong> <input type="number" min=1 value=1 id="passengerCount" oninput="updateTotalPrice()"></p>
                    <p><strong>Total Price:</strong> $<span id="totalPrice">..</span></p>

                    <input type="submit" value="Submit">
            </div>
        </div>
    </div>
    </div>








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
        function showBookingDetails(id, source, destination, price) {
            // alert(id)
            document.getElementById("from").innerText = source;
            document.getElementById("to").innerText = destination;
            document.getElementById("passengerCount").value = 1; // Reset passenger count to 1
            document.getElementById("totalPrice").innerText = price;
            // document.getElementById("bookingDetails").style.display = "block";
        }

        function updateTotalPrice() {
            var price = document.getElementById("totalPrice").innerText;
            var passengerCount = document.getElementById("passengerCount").value;
            document.getElementById("totalPrice").innerText = price * passengerCount;
            // alert()
        }
    </script>

</body>
</html>