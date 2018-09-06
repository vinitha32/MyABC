<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login Page</title>
		<style>
		h1{
		color:green;
		text-decoration: underline;
		text-align: center;

		}
		form{
		border:2px solid green;
		margin: 2em;
		}
		p{
		text-align:center;
		font-size: 16pt;
		}
		</style>
	</head>
	<body>
	<body style="background-color:#F0E68C;">
		<h1>Login Page</h1>
		<form action="LoginServlet" method="Post">
			<table id="Test" cellspacing="20" align="center">
			<tr><td>USERNAME :</td><td><input type="text"  name="username" required="required"></td></tr>
			<tr><td>PASSWORD:</td><td> <input type="password" name="password" placeholder="Enter your password" required></td></tr>
			<tr><td colspan=5 align="center"><button type="submit">Login</button></td></tr></table>
		</form>
	</body>
</html>