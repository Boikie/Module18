<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="suc.css">
</head>
<body >

<div style="padding:30px;text-align:center;">
  <h1>WELCOME TO LIBRARY MANAGEMENT SYSTEM </h1>
</div>

<div style="overflow:auto">
  <div class="menu">
    <a href="#">Novels</a>
    <a href="#">Jounals</a>
    <a href="#">Textbooks</a>
    <a href="#">Comics</a>
    <a href="#">Art</a>
    <a href="#">Fantasy</a>
    <a class="men" href="#">Poetry</a><br><br><br>
    <a href = "uploadBooks.jsp" name="button1">Upload A Book</a><br>
    <a href = "all.jsp" name="button1">View All User's</a>
    <a href = "ViewAllBooks.jsp" name="button1">View All Book's</a>
   </div>
   
   <div>
   <h3 align = "right">Logged in as <%=session.getAttribute("name")%></h3>
   </div>
  	
  <div class="main">
  	<h3><U>MOST READ BOOK'S</U></h3><br><br><br>
    <h3><a href = ""><img src="Dreams.jpg"  height="100" width="120">Lorum Ipsum</h3></a>
    <h3><a href = ""><img src="Dreams.jpg"  height="100" width="120">Lorum Ipsum</h3></a>
    <h3><a href = ""><img src="Dreams.jpg"  height="100" width="120">Lorum Ipsum</h3></a>
    <h3><a href = ""><img src="Dreams.jpg"  height="100" width="120">Lorum Ipsum</h3></a>
    
    <a href="/testme?param1=cool&param2=nice">Go to servlet</a>
  </div>

  <div class="right">
    <h2>About</h2>
    <p>The primary purpose of the public library is to provide resources and
		services in a variety of media to meet the needs of individuals and
		groups for education, information and personal development including
		recreation and leisure.
	</p>
  </div>
</div>

<div style="background-color:#e5e5e5;text-align:center;padding:10px;margin-top:7px;">© copyright jumpCo.com</div>

</body>
</html>
