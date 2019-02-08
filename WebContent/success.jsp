<%@page errorPage="errorPage.jsp" %>
<%@page import="files.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>HOME</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'>
		<style>
			body{
				background-color: lightblue;
				padding: 5%;
			}
		</style>
	</head>
	<body>
<%
	String code=(String)request.getParameter("code");
	String state=(String)request.getParameter("state");

	Post_Test obj_Post=new Post_Test();
	LinkedInProfile obj=obj_Post.sendPost(code);
%>
	 	<div class="container">
			<h2 class="h2 text-center">You Successfully LogedIn</h2>
			<h3 class="h3 text-center">Welcome, <%=obj.getFirstName() %></h3>
			<h1 class="h1 text-center"><i class='fas fa-folder-open'></i></h1><br>
			<div class="row">
				<div class="col-lg col col-md col-xl"></div>
				<div class="col-lg-4 col-8 col-md-5 col-xl-3">
					<table class="table table-stiped table-hover table-responsive">
						<thead class="thead-dark">
							<tr>
								<th>Parameters</th>
								<th>Value</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><b>first Name</b></td>
								<td><b><em><%=obj.getFirstName() %></em></b></td>
							</tr>
							<tr>
								<td><b>Last Name</b></td>
								<td><b><em><%=obj.getLastName() %></em></b></td>
							</tr>
							<tr>
								<td><b>Id</b></td>
								<td><b><em><%=obj.getId() %></em></b></td>
							</tr>
							<tr>
								<td><b>HeadLine</b></td>
								<td><b><em><%=obj.getHeadline() %></em></b></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-lg col col-md col-xl"></div>
			</div>
		</div> 
	</body>
</html>