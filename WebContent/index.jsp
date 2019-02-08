<%@page errorPage="errorPage.jsp" %>
<%@page import="files.*"%>
<!DOCTYPE html>
 	<head>
 		<title>Social Media Integration</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
		<style>
			body{
				background-color: lightblue;
				padding: 5%;
			}
		</style>
	</head>
	<body>
		<script>
			function statusChangeCallback(response) {
				console.log('statusChangeCallback');
				console.log(response);
				if (response.status === 'connected') {
					testAPI();
				} else if (response.status === 'not_authorized') {
					document.getElementById('status').innerHTML = 'Login with Facebook ';
				} else {
					document.getElementById('status').innerHTML = 'Login with Facebook ';
				}
			}
			function checkLoginState() {
				FB.getLoginStatus(function(response) {
					statusChangeCallback(response);
				});
			}
			window.fbAsyncInit = function() {
				FB.init({ 
					appId : '2067111003356260',
					cookie : true,
					xfbml : true,
					version : 'v2.2'
				});
				FB.getLoginStatus(function(response) {
					statusChangeCallback(response);
				});
			};
			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) return;
				js = d.createElement(s); js.id = id;
				js.src = "//connect.facebook.net/en_US/sdk.js";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk')); 
			
			function testAPI() { 
				console.log('Welcome! Fetching your information.... ');
				FB.api('/me?fields=name,email', function(response) {
					console.log('Successful login for: ' + response.name);
					document.getElementById("status").innerHTML = '<p>Welcome '+response.name+'! <a href=fblogincontroller.jsp?user_name='+ response.name.replace(" ", "_") +'&user_email='+ response.email +'>Continue with facebook login</a></p>'
				});
			}
		</script> 
		<div class="container">
			<h2 class="h2 text-center">Welcome To Home Page</h2>
			<h3 class="h3 text-center">Login with Your Social Media Id</h3><br>
			<div class="row">
				<div class="col-lg col-sm"></div>
				<div class="col-lg-7 col-sm-9">
					<table class="table table-bordered table-hover table-striped table-responsive">
						<thead class="thead-dark">
							<tr>
								<th>Social Media</th>
								<th>Options</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									Login With FaceBook
								</td>
								<td>
									<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
									</fb:login-button><div id="status"></div>
								</td>
							</tr>
							<tr>
								<td>Login With LinkedIn</td>
								<td>
									<a href="https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=<%=commonthings.client_id %>&redirect_uri=<%=commonthings.redirect_url %>&state=fdfdfdfd&scope=r_basicprofile%20r_emailaddress">
									<img alt="" src="Linkedin-customized-button.png" style="width: 35%">
									</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-lg col-sm"></div>
			</div>
		</div>
		<script type="text/javascript">
		</script>
	</body>
</html>