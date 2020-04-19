<?php
	session_start();
	if(!isset($_SESSION['loggedinuser']))
	{
		header("Location:login.php");
	}
?>
<html>
	<title>Manager</title>
	<head>
		<style type="text/css">
			#navigation {
				line-height: 40px;
				height: 350px;
				width: 250px;
				background-color: rgb(11, 13, 71);
				float: left;
				padding: 5px;
			}
			#content {
				width: 1230px;
				float: left;
				padding: 5px;
			}
		</style>
		<script src="scripts/manager_dashboard_scripts.js"></script>
	</head>
	<body style="background-color: rgb(236,190,20); background-image: url(../storage/images/admin.jpg); background-blend-mode: lighten;">
		<div style="background-color: rgb(11, 13, 71);">
			<span style="text-align: left;">
				<a href="../index.php" style="text-decoration: none;"><font size="6" style="font-family: Times New Roman; color: white;"><b>SUN</b></font><font size="6" style="font-family: Times New Roman; color: rgb(236,190,20);"><b> RISE</b></font><br>
					<font size="2" style="font-family: verdana; color: rgb(160,150,16);">YOUR DREAM HOTEL</font>
				</a>
			</span>
			<div style="text-align: center;">
				<font size="8" style="color: white;">Manager Panel</font>
				<div style="text-align: right;">
					<a href="../controller/logout.php" style="text-decoration: none;"><font style="color: gray;"><b>Logout</b></font></a>
				</div>
			</div>
		</div>
		<hr>
		<br><br>
		<div id="navigation">
			<font size="6" style="color: white;">Manage User</font><br>
			<a href="javascript:;" onclick="add_user()" style="text-decoration: none;"><font size="4" style="color: rgb(168,58,58);">Add user</font></a><br>
			<a href="javascript:;" onclick="remove_user()" style="text-decoration: none;"><font size="4" style="color: rgb(168,58,58);">Remove user</font></a><br>
			<font size="6" style="color: white;">Manage Rooms</font><br>
			<a href="javascript:;" onclick="room_reserve()" style="text-decoration: none;"><font size="4" style="color: rgb(168,58,58);">Room Reserve</font></a><br>
			<a href="javascript:;" onclick="available_room()" style="text-decoration: none;"><font size="4" style="color: rgb(168,58,58);">Available Room</font></a><br>
			<a href="javascript:;" onclick="reserved_room()" style="text-decoration: none;"><font size="4" style="color: rgb(168,58,58);">Reserved Room</font></a><br>
			<a href="javascript:;" onclick="" style="text-decoration: none;"><font size="4" style="color: rgb(168,58,58);">Room Reservation Reuests</font></a>
		</div>
		<div id="content">
			
		</div>
	</body>
</html>