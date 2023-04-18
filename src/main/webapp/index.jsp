<%@page import="com.akyuz.db.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Registration</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

	<!-- 	--start Navbar-- -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="#">Student</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp">Register</a></li>


			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	</nav>




	<!-- 	--finish Navbar--	 -->


	<!-- 	-- form start-- -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header bg-primary">
						<h4 class="text-center text-white">Student Registration Form</h4>
					</div>
					<div class="card-body">

						<%
						String sucmsg = (String) session.getAttribute("sucmsg");
						String errmsg = (String) session.getAttribute("errmsg");
						if (sucmsg != null) {
						%>
						<h5><%=sucmsg%></h5>

						<%
						session.removeAttribute("sucmsg");
						}
						if (errmsg != null) {
						%>
						<h5><%=errmsg%></h5>

						<%
						session.removeAttribute("errmsg");
						}
						%>
						<form action="RegisterServlet" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Full Name</label> <input
									name="fname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter name">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">DOB</label> <input name="dob"
									type="date" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter dob">
								
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Adress</label>
								<textarea name="adress" rows="5" cols="" class="form-control"></textarea>

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone No</label> <input
									name="phno" type="number" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter phone no">

							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									name="exampleRadios" id="exampleRadios1" value="male" checked>
								<label class="form-check-label" for="exampleRadios1">
									Male </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio" name="gender"
									name="exampleRadios" id="exampleRadios2" value="female">
								<label class="form-check-label" for="exampleRadios2">
									Female </label>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>



					</div>
				</div>
			</div>

		</div>

	</div>



	<!-- 	-- form end-- -->



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

</body>
</html>