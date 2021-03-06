<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>
<%@ page import= "login_classes.*"%>
<%@ page import= "java.util.*"%>

<%@ include file="logincheck.jsp"%>
<%@ include file="bcc.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		
		<title>e-barber</title>

		<!-- Bootstrap core CSS & JQuery-->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<!-- Custom styles for this template -->	
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/ismgroup26/css_docs/contactwithus.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/ismgroup26/css_docs/navbar.css">
		<script src="https://kit.fontawesome.com/3781654338.js" crossorigin="anonymous"></script>	
	</head>	
	<style>
		body {
			background-image: url("<%=request.getContextPath() %>/ismgroup26/imgs/barberBG1.jpg"); 
			background-size: cover;		
			}
		#AccountsBnC{
			margin-right:5%;
			color:black;
			}
	</style>
	<body>
		<% 	BarbershopUser user = (BarbershopUser)session.getAttribute("user");
			AreaSearch areaSearch = new AreaSearch();
			List<Areas> areas = areaSearch.getAreas();
		%>
		<%@ include file="bnavbar.jsp"%>
		<div class="contact_container theme-showcase" role="main">
			<div class="container">
				<form action="reportController.jsp">
					<label for="username">Username</label>
					<kbd><%=user.getUsername()%></kbd><br>
					<label for="address">Address</label>
					<kbd><%=user.getAddress()%></kbd><br>
					<label for="area">Area</label>
					<kbd><%=user.getArea().getName()%></kbd><br>
					<select name="subject" class="custom-select" required>
						<option value="" disabled selected hidden>Choose subject</option>
						<option value="question">I have a question about the system.</option>
						<option value="suggestion">I have a suggestion for the system.</option>
						<option value="problem">I want to report a problem.</option>
						<option value="other">Other</option>
					</select>
					<textarea id="report" name="report" maxlength="200" placeholder="Explain here" style="height:100px"></textarea>
					<input type="submit" value="Submit">
					<input type="hidden" name="bid" value="<%=user.getBID()%>"/>
				</form><br>
			<%	if(request.getAttribute("reportmsg") != null) { %>
					<div class="alert alert-danger text-center allert-dismissible fade show errormsg" role="alert"><%=(String)request.getAttribute("reportmsg") %>
					</div>
			<% 	}	%>
			</div>			
		 </div>

		<!-- =================== Place all javascript at the end of the document so the pages load faster =================== -->
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>	
		<!-- Bootstrap core JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/ismgroup26/js/custom.js"></script>
	</body>
</html>