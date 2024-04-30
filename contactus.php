<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactus</title>
    
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link rel="stylesheet" href="css/contactus.css" type="text/css">
</head>
<body>

    <!-- Heading code lines -->
    <div id="heading">
        <img src="images\airline-logo.jpg" width="100px" height="100px" class="logo">

        <h1 class="mainHeadline">Your Dream trip, a few clicks away</h1>
        
        <a href="#">
            <img class="userLogo" width="50px" height="50px" src="images\user-circle.png">
            <div id="profile-wrapper">
        <?php
                session_start();
                if (isset($_SESSION["username"])) {
                    echo '<a href="./php/logout.php">Logout</a>';
                } else {
                    echo '<a href="login.php">Login</a>/<a href="signup.php">Sign Up</a>';
                }
                ?>
                </div>
        </a>
    </div>
	
	
    <!-- welcome and icons set code lines -->
    <div>
        <h2 style="margin-left: 10px;">Welcome</h2>
        <form class="search" action="/search">
            <input type="search" name="q" placeholder="Search the Packeges">
            <button type="submit">Search</button>
        </form>

        <div class="icon-container">
            <a href="index.php">
                <img src="images/icons-home.png" alt="Home" width="30px" height="30px">
                <span>Home</span>
            </a>
            <a href="profile.php">
                <img src="images/icons-user.png" alt="User" width="30px" height="30px">
                <span>User</span>
            </a>
            <a href="contactus.php">
                <img src="images/icons-phone.png" alt="Contact Us" width="30px" height="30px">
                <span>Contact</span>
            </a>
            <a href="aboutus.php">
                <img src="images/icons-warning.png" alt="About Us" width="30px" height="30px">
                <span>About</span>
            </a>
            </div>
    </div>
	





	<div class="contact-info">
        <div class="contact-item">
            
			
			<i class="fa-solid fa-location-dot"><br><h3>Address</h3></i>
            <p>46/23,Navam Mwatha,<br>
			colombo 00200,<br>
			Srilanka</p>
        </div>
		
        <div class="contact-item">
            
			<i class="fa-solid fa-phone"><br><h3>Phone</h3></i>
            <p>+9411215235</p>
			<h5>(Quick Chat - 24/7)</h5>
        </div>
		
        <div class="contact-item">
            
			<i class="fa-brands fa-whatsapp"><br><h3>Chat</h3></i>
			<p>+9475231524</p>
			<h5>(Monday - Friday:8.30-18.00)</h5>
        </div>
		
        <div class="contact-item">
            
			<i class="fa-solid fa-envelope"><br><h3>Email</h3></i>
			<h5>Send your inquries</h5>
            <p>admin@singhatravels.com<br>
			support@singhatravels.com</p>
        </div>
		
    </div>
	
	
		<div class="container">
        <div class="feedback-form">
            <h2>Send Your Feedback</h2>
            <form>
                <div class="form-group">
                    <label for="fullname">Full Name</label>
                    <input type="text" id="fullname" name="fullname" placeholder="Enter your full name">
                </div>
                <div class="form-group">
                    <label for="email">Your Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email">
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" placeholder="Enter your message"></textarea>
                </div>
                <button type="submit">Send Feedback</button>
            </form>
        </div>
    </div>
	</div>
	



    







    <div class="footer">
        <img src="images/airline-logo.jpg" alt="Airline Logo" width="100px" height="100px" class="logo">
    
        <div class="content-wrapper">
            <h1 class="bottomHeadline">Follow Us On</h1>

            <div class="socialMedia-icon-container">
                <img src="images/icon-facebook.png" alt="Facebook" width="30px" height="30px">
                <img src="images/icon-twitter.png" alt="Twitter" width="30px" height="30px">
                <img src="images/icon-instagram.png" alt="Instagram" width="30px" height="30px">
                <img src="images/icon-linkedin.png" alt="LinkedIn" width="30px" height="30px">
            </div>
        </div>

        <div class="email-container">
            <p>Subscribe for our latest offers...</p>
            <input type="search" name="a" placeholder="Email address">
            <img src="images\icon-email.png" alt="email" width="30px" height="30px">
            <p>Teams of use.Privacy Policy.Cookies</p>
        </div>





</body>
</html>