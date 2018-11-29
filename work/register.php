<html>
<head>
	<title>Register</title>
	<link href="css/register-style.css" rel="stylesheet">
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
		<div class="container">
			<h1>Register</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>
				<div>
					<label for="usr"><b>Username</b></label>
					<input type="text" placeholder="Enter Username" name="usr" required>
					<?php
						$Global['tempUser'] = $_POST["usr"];
					?>
				</div>

			<hr>

			<p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
			<button type="submit" onclick = "userCall()" class="registerbtn">Register</button>
			
		</div>
		<script>
		function userCall() {
			<?php
				$flag = 0;
				$temp = 0;
				$conn = oci_connect('cyagow', 'Mar951996', '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=db2.ndsu.edu)(Port=1521)))(CONNECT_DATA=(SID=cs)))');
				$check ="select Player.Player_id from Player";
				$stidC = oci_parse($conn,$check);
				oci_execute($stidC,OCI_DEFAULT);
			
				while ($row = oci_fetch_array($stid,OCI_ASSOC)) 
				{
					if($row == $tempUser){
						$flag = 1;
					};
					$row = $temp;
				}
				$temp = $temp+1;
				if($flag ==1){
					oci_free_statement($stid);
					oci_close($conn);
					echo "username already in use try a different one or try logging in";
				}
				else{
					$add ="INSERT INTO Player (Player_ID, Player_Name) VALUES(" + $temp + ", " + $tempUser + ");";
					$stidA = oci_parse($conn,$add);
					oci_execute($stidA,OCI_COMMIT_ON_SUCCESS);
					oci_free_statement($stid);
					oci_close($conn);
				}
			?>
			}
		</script>
		<div class="container signin">
			<p>Already have an account? <a href="login.html">Sign in</a>.</p>
		</div>
		

</body>
</html>