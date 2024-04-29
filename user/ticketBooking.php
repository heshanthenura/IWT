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
    <div id="wrapper-container" >
    <div class="form-wrapper">

        <form action="submit_booking.php" method="POST">
            <label for="trip_type">Trip Type:</label><br>
            <input type="radio" id="one_way" name="trip_type" value="one_way">
            <label for="one_way">One Way</label>
            <input type="radio" id="round_trip" name="trip_type" value="round_trip" checked>
            <label for="round_trip">Round Trip</label><br><br>


            <label for="from_location">Outward:</label><br>
            <select id="from_location" name="from_location">
                <option value="New York">New York</option>
                <option value="Los Angeles">Los Angeles</option>
                <option value="Chicago">Chicago</option>
                <!-- Add more options as needed -->
            </select><br><br>

            <label for="to_location">Round Trip:</label><br>
            <select id="to_location" name="to_location">
                <option value="London">London</option>
                <option value="Paris">Paris</option>
                <option value="Tokyo">Tokyo</option>
                <!-- Add more options as needed -->
            </select><br><br>

            <label for="passenger_count">Passenger Count:</label><br>
            <input type="number" id="passenger_count" name="passenger_count" min="1" max="10"><br><br>

            <label for="trip_date">Trip Date:</label><br>
            <input type="date" id="trip_date" name="trip_date"><br><br>

            <label for="gender">Gender:</label><br>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label><br><br><br>

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

            <input type="submit" value="Submit">
        </form>
    </div>



    <!-- booked details show -->
    <div class="details-wrapper">
        <div class="container">
            <div class="booking-details">
                <h2>Booking Details</h2>
                <p><strong>From:</strong> New York</p>
                <p><strong>To:</strong> London</p>
                <p><strong>Trip Type:</strong> Round Trip</p>
                <p><strong>Passenger Count:</strong> 2</p>
                <p><strong>Total Price:</strong> $500</p>
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



</body>
</html>