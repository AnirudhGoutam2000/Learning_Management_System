<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel='stylesheet' type='text/css' href='static/css/bootstrap.css'>
  <link rel='stylesheet' type='text/css' href='static/css/index.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>TEACHER SIGN-UP</title>
	  <style>
		#container_fluid{
			background-image: url("static/image/logo.png");
			background-size: 200px 200px;
			background-attachment:fixed;
			}
	  </style>
 </head>
 <body>
	<div id='container_fluid' class='container-fluid'> 
		<div class='container'> 
			<div id='row1' class='row'><span id='main_title'>GYAN GANGA COLLEGE</span></div>
			<div id='row2' class='row'>	
	
		<% String str = (String)request.getAttribute("message"); %>	

		<% if(str!=null&&!str.equals("")) {%>
		<span style="background-color:#00154f;color:white;max-width:500px;margin:auto;font-weight:bold;font-size:20px;padding:5px 10px 5px 10px;"><%= str %></span>
		<% } %>
				
				<form action="teachersignup.do" method='post' style="max-width:500px;margin:auto">
						
				 <div class="imgcontainer">
				 <img id='login_pic' style='margin-left:180px;' src="static/image/login.png" >
				 </div>

					  <h2 style='color:#00154f;font-weight:bold;margin-left:70px;'>Teacher Signup Form</h2>
					 
					  <div class="input-container">
						<i class="fa fa-user icon"></i>
						<input class="input-field" type="text" placeholder="Username" name="t_uname">
					  </div>

					  <div class="input-container">
						<i class="fa fa-envelope icon"></i>
						<input class="input-field" type="text" placeholder="Email" name="t_email">
					  </div>

					  <div class="input-container">
						<i class="fa fa-mobile icon"></i>
						<input class="input-field" type="text" placeholder="Mobile No." name="t_mobile">&nbsp;&nbsp;

						<i class="fa fa-code icon"></i>
						<input class="input-field" type="text" placeholder="Code" name="code">&nbsp;&nbsp;

					  </div>

					  <div class="input-container">
						<i class="fa fa-key icon"></i>
						<input class="input-field" type="password" placeholder="Password" name="t_psw">
					  </div>

					  <div class="input-container">
						<i class="fa fa-check icon"></i>
						<input class="input-field" type="password" placeholder="Re-Password" name="t_repass">
					  </div>


					  <button type="submit" class="btn">REGISTER</button>
			  </form>

			</div>
			<div id='row3' class='row'> 
			
			<span id='copywrite'> &copy; Developed By TEAM ANIRUDH GOUTAM  </span> 
			<span style='margin-left:50%;padding:auto; ' id='copywrite'> 
			JOIN US ON &nbsp; &nbsp;
			<a href='https://www.facebook.com/anirudh.goutam23/' ><img style='height:25px;border-radius:10px;' src='static/image/fb.jpg'/></a> &nbsp;&nbsp;
			<a href='https://www.instagram.com/iamgangster/' ><img style='height:25px;border-radius:10px;' src='static/image/insta.png'/></a> &nbsp;&nbsp;
			<a href='https://twitter.com/AnirudhGoutam1' ><img style='height:25px;border-radius:10px;' src='static/image/twitter.png'/></a> 
			</span> 			
			</div>
		<div>
	</div>
 </body>
</html>
