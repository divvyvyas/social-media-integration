<% String user_name=(String)request.getParameter("user_name");
String user_email=(String)request.getParameter("user_email"); %>
<html>
	<head>
		<title>HOME</title>
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
		<div class="container">
			<h2 class="h2 text-center">You Successfully LogedIn</h2>
			<h3 class="h3 text-center">Welcome, <%=user_name %></h3>
			<h1 class="h1 text-center"><i class='fas fa-folder-open'></i></h1>
			<div class="row">
				<div class="col-sm col-md"></div>
				<div class="col-sm-12 col-md-6">
					<table class="table table-bordered table-striped table-hover">
						<thead class="thead-dark">
							<tr>
								<th>Parameters</th>
								<th>Value</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><b>User Name</b></td>
								<td><b><em><%=user_name %></em></b></td>
							</tr>
							<tr>
								<td><b>E-mail</b></td>
								<td><b><em><%=user_email %></em></b></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-sm col-md"></div>
			</div>
		</div>
	</body>
</html>