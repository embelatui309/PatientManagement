<%@page contentType="text/html" errorPage="error.jsp" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="witdth=device-width, initial-scale=1.0">
	<title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
        <script src="https://kit.fontawesome.com/9ee78b02b3.js" crossorigin="anonymous"></script>
</head>
<% request.setCharacterEncoding("UTF-8"); %>
</head>
<body>
	<header class="header">
	
	<div class="head2">
		<div class="signupAndResgister">
			<nav class="navbar">
				<a href="LoginServlet">Login</a>
                <a href="RegisterServlet">Register</a>
			</nav>
		</div>
	</div>
	<div class="head2">
		
	<nav class="navbar">
        <a href="#home">home</a>
        <a href="/PatientMAnagement2/ViewServiceServlet?action=viewservices">services</a>
        <a href="#about">about</a>
        <a href="/PatientMAnagement2/ViewDoctorServlet?action=viewdoctors">Doctors</a>
    </nav>
</div>
</header>