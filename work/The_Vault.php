<html>
<head>
	<title>Business Website</title>
	<link href="css/style.css" rel="stylesheet">
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
		
		</div>
		
		<div class="hero">
		<h1>What do you need to know?</h1>
		
			<div class="button">
				<a href="" onclick = "EnemyCall()" class="btn btn-one"> Enemies</a>
				<a href="" onclick = "LocationCall()" class="btn btn-two"> Locations</a>
				<a href="" onclick = "ArmourCall()" class="btn btn-two"> Armour</a>
				<a href="" onclick = "WeaponCall()" class="btn btn-two"> Weapons</a>
				<a href="" onclick = "SkillCall()" class="btn btn-two"> Skills</a>
				<a href="" onclick = "NPCCall()" class="btn btn-two"> NPCs</a>
			</div>
			<script>
				function EnemyCall() {  
    					<?php
						$conn = oci_connect('cyagow', 'Mar951996', '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=db2.ndsu.edu)(Port=1521)))(CONNECT_DATA=(SID=cs)))');
						$query = "select * from EnemiesKnown where Player_id = " + $_SESSION["currentUser"];
						$stid = oci_parse($conn,$query);
						oci_execute($stid,OCI_DEFAULT);
						//iterate through each row
						while ($row = oci_fetch_array($stid,OCI_ASSOC)) 
						{
    						//iterate through each item in the row and echo it  
   							foreach ($row as $item)    
    							{
        							echo $item.' ';
    							}   
							echo '<br/>';}
						oci_free_statement($stid);
						oci_close($conn);


					?>
				}
				function LocationCall() {  
    					<?php
						$conn = oci_connect('cyagow', 'Mar951996', '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=db2.ndsu.edu)(Port=1521)))(CONNECT_DATA=(SID=cs)))');
						$query = "select * from EnemiesKnown where Player_id = " + $_SESSION["currentUser"];
						$stid = oci_parse($conn,$query);
						oci_execute($stid,OCI_DEFAULT);
						//iterate through each row
						while ($row = oci_fetch_array($stid,OCI_ASSOC)) 
						{
    						//iterate through each item in the row and echo it  
   							foreach ($row as $item)    
    							{
        							echo $item.' ';
    							}   
							echo '<br/>';}
						oci_free_statement($stid);
						oci_close($conn);
					?>
				}
				function ArmourCall() {  
    					<?php
						$conn = oci_connect('cyagow', 'Mar951996', '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=db2.ndsu.edu)(Port=1521)))(CONNECT_DATA=(SID=cs)))');
						$query = "select * from EnemiesKnown where Player_id = " + $_SESSION["currentUser"];
						$stid = oci_parse($conn,$query);
						oci_execute($stid,OCI_DEFAULT);
						//iterate through each row
						while ($row = oci_fetch_array($stid,OCI_ASSOC)) 
						{
    						//iterate through each item in the row and echo it  
   							foreach ($row as $item)    
    							{
        							echo $item.' ';
    							}   
							echo '<br/>';}
						oci_free_statement($stid);
						oci_close($conn);
					?>
				}
				function WeaponCall() {  
    					<?php
						$conn = oci_connect('cyagow', 'Mar951996', '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=db2.ndsu.edu)(Port=1521)))(CONNECT_DATA=(SID=cs)))');
						$query = "select * from EnemiesKnown where Player_id = " + $_SESSION["currentUser"];
						$stid = oci_parse($conn,$query);
						oci_execute($stid,OCI_DEFAULT);
						//iterate through each row
						while ($row = oci_fetch_array($stid,OCI_ASSOC)) 
						{
    						//iterate through each item in the row and echo it  
   							foreach ($row as $item)    
    							{
        							echo $item.' ';
    							}   
							echo '<br/>';}
						oci_free_statement($stid);
						oci_close($conn);
					?>
				}
				function SkillCall() {  
    					<?php
						$conn = oci_connect('cyagow', 'Mar951996', '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=db2.ndsu.edu)(Port=1521)))(CONNECT_DATA=(SID=cs)))');
						$query = "select * from EnemiesKnown where Player_id = " + $_SESSION["currentUser"];
						$stid = oci_parse($conn,$query);
						oci_execute($stid,OCI_DEFAULT);
						//iterate through each row
						while ($row = oci_fetch_array($stid,OCI_ASSOC)) 
						{
    						//iterate through each item in the row and echo it  
   							foreach ($row as $item)    
    							{
        							echo $item.' ';
    							}   
							echo '<br/>';}
						oci_free_statement($stid);
						oci_close($conn);
					?>
				}
				function NPCCall() {  
    					<?php
						$conn = oci_connect('cyagow', 'Mar951996', '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(Host=db2.ndsu.edu)(Port=1521)))(CONNECT_DATA=(SID=cs)))');
						$query = "select * from EnemiesKnown where Player_id = " + $_SESSION["currentUser"];
						$stid = oci_parse($conn,$query);
						oci_execute($stid,OCI_DEFAULT);
						//iterate through each row
						while ($row = oci_fetch_array($stid,OCI_ASSOC)) 
						{
    						//iterate through each item in the row and echo it  
   							foreach ($row as $item)    
    							{
        							echo $item.' ';
    							}   
							echo '<br/>';}
						oci_free_statement($stid);
						oci_close($conn);
					?>
				}
			</script>
			
	</header>
</body>
</html>