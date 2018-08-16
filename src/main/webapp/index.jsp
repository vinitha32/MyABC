<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login System</title>
		<style>
			#Test{
			text-align:justify;
			padding:15px 15px;
			background-color:red;
			height:400px;
			border-radius:15px;
			}
			td{
			width:100px;
			color:white;
			}
			p{

			text-align:center;
			font-size:16pt;
			color:#00CED1;
			}
			h1{
			margin:25px;
			text-align:center;
			background-color:#00CED1;
			color:#fff;
			}
		</style>
	</head>
	<body>
	<h1>Welcome To MYABC!!</h1>
    	<form action="ControllerServlet" method="Post">
    		<p>SignUp Here</p>
    		<table id="Test" cellspacing="20" align="center">
    		<tr><td>USERNAME:</td><td><input type="text" name="username" placeholder="Enter Alphabetics only" required></td></tr>
    		<tr><td>PASSWORD:</td><td> <input type="password" name="password" placeholder="Enter your password" required></td></tr>
    		<tr><td>EMAIL:</td><td> <input type="email" name="email" placeholder="Enter your email" required></td></tr>
    		<tr><td colspan=5 align="center"><button type="submit">REGISTER</button></td></tr></table>
   
    		<p>Already Registered ?? Then,<a href="login.jsp">Login Here</a></p>
    	</form>
    </body>
    </html>