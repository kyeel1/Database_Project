<html>
<head>
	<title>Login</title>
	<link href="css/login-style.css" rel="stylesheet">
</head>
<body>
	<header>
		<ul>
		    <li><img src="images/logo.png"></li>
			<li><a href="index.php"> HOME </a></li>
			<li><a href="instructions.php"> INSTRUCTIONS </a></li>
			<li><a href="The_Vault.php"> THE VAULT </a></li>
			<li><a href="contact.php"> CONTACT </a></li>
			<li><a href="login.php"> LOGIN </a></li>
			<li><a href="register.php"> REGISTER </a></li>
			
		</ul>
	</header>
	<form action="needScript.php">
		<div class="imgcontainer">
			<img src="login.jpg" alt="Avatar" class="avatar">
		</div>

		<div class="container">
			<div>
				<label for="uname"><b>Username</b></label>
				<input type="text" onclick= "userID()" placeholder="Enter Username" name="uname" required>
			</div>
			<div>
				<button type="submit">Login</button>
				<label>
					<input type="checkbox" checked="checked" name="remember"> Remember me
				</label>
			</div>
			
		</div>
		<script>
		function userID() {
			<?php
				$_SESSION["currentUser"] = $_POST["uname"];
			?>}
		</script>
		<div class="container" style="background-color:#f1f1f1">
			<button type="button" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot <a href="#">password?</a></span>
		</div>
	</form>
</body>
</html>