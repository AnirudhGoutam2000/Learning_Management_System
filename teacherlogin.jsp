<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel='stylesheet' type='text/css' href='static/css/bootstrap.css'>
  <link rel='stylesheet' type='text/css' href='static/css/index.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>TEACHER LOGIN</title>
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

			
			<% String err = (String)request.getAttribute("error"); %>
			<%if(err!=null){%>
			<span style="background-color:#00154f;color:white;max-width:500px;margin:auto;font-weight:bold;font-size:20px;padding:5px 10px 5px 10px;"><%= err %></span>
			<% } %>
			
				
				<form action="teacherlogin.do" method='post' style="max-width:500px;margin:auto">
						
				 <div class="imgcontainer">
				 <img id='login_pic' src="static/image/login.png" >
				 </div>

					  <h2 style='color:#00154f;font-weight:bold;'>Teacher Login Form</h2>

					  <div class="input-container">
						<i class="fa fa-envelope icon"></i>
						<input class="input-field" type="text" placeholder="Email" name="email">
					  </div>
					  
					  <div class="input-container">
						<i class="fa fa-key icon"></i>
						<input class="input-field" type="password" placeholder="Password" name="psw">
					  </div>


					  <button type="submit" class="btn">LOGIN</button>
			  </form>

			  <div class="input-container" style='margin:auto;color:#00154f;font-weight:bold;'>-------------------------------------------------------------------------------------OR--------------------------------------------------------------------------------------</div>
					  
					  <div class="input-container" style='margin:auto;padding:0px 400px 0px 400px;'>
						<button class="btn"><a style='color:white' href="teachershowsignup.do">CREATE NEW ACCOUNT</a></button>
					  </div>
			
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
