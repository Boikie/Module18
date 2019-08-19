<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="regis.css" />
<title>Student Registration Form</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

	<form  action="RegisterServlet" method="post">

		<a href="home.html"><i style="height: 24px" class="fa fa-home"></i></a>


		<br /> <u><h3 align="center">STUDENT REGISTRATION FORM</h3></u> <br />
		<br />

		<table align="center" cellpadding="10">


			<tr>
				<td>Full Name</td>
				<td><input type="text" name="FullName" /></td>
			</tr>

			<tr>
				<td>Username</td>
				<td><input type="text" name="Username" /></td>
			</tr>

			<tr>
				<td>Age</td>
				<td><input type="text" name="Age" /></td>
			</tr>

			<tr>
				<td>Mobile number</td>
				<td><input type="text" name="MobileNumber" maxlength="10" />
					(10 digit number)</td>
			</tr>


			<tr>
				<td>City</td>
				<td><input type="text" name="City" /></td>
			</tr>

			<tr>
				<td>Address<br /> <br /> <br /></td>
				<td><textarea name="Address" rows="4" cols="30"></textarea></td>
			</tr>


			<tr>
				<td>Password</td>
				<td><input type="password" name="Password" /></td>
			</tr>

			<tr>
			<a href = "registration.jsp" >
				<td colspan="2" align="center"><input type="submit"
					value="Submit"> <input type="reset" value="Reset">
				</td>
			</a>
			</tr>



		</table>

	</form>

</body>
</html>