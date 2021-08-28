<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel='stylesheet' type='text/css' href='static/css/bootstrap.css'>
  <link rel='stylesheet' type='text/css' href='static/css/index.css'>
  <link rel='stylesheet' type='text/css' href='static/css/dashboard.css'>
  <link rel='stylesheet' type='text/css' href='static/css/cp.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Competitive Programming</title>
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
				
				<div id='headings'>
				<a href='cpro.do'><span  id='books' class='titles'> CP</span></a>&nbsp;&nbsp;
				<a href='notes.do'><span id='notes' class='titles'>NOTES</span></a>&nbsp;&nbsp;
				<a href='activity.do'><span id='activity' class='titles'>ACTIVITY</span></a>&nbsp;&nbsp;
				<a href='companies.do'><span id='companies' class='titles'>COMPANIES</span></a>&nbsp;&nbsp;
				<a href='profile.do'><span id='profile' class='titles'>PROFILE</span></a>&nbsp;&nbsp;
				<a href='about_us.do'><span id='about_us' class='titles'>ABOUT US</span></a>&nbsp;&nbsp;
				</div>
	
				<div id='book' class='row' style='width:100%;height:90%;margin-left:3px;'>
					<div id='show_ques' class='col-12'>

						<div id='ques'  class='row'>
							<!---->
						</div>

						<div id='add'  class='row'>
							<span id='add_span'>Add Question</span>
						</div>

					</div>
					<!--start-->
					<div id='add_ques' class='col-12'>
						<form action="save_ques.do" method='post' style="width:100%;margin-top:2%;">

						  <h2 style='color:#00154f;font-weight:bold;'>Question</h2>

						  <div class="input-container">
							<i class="fa fa-envelope icon"></i>
							<input class="input-field" type="text" placeholder="Title" name="title">
						  </div>
						  
						  <div class="input-container" ">
							<i class="fa fa-question icon"></i>
							<textarea class="input-field" type="text-area" placeholder="Problem" name="problem"></textarea>
						  </div>

						  <div class="input-container">
							<i class="fa fa-sticky-note-o icon"></i>
							<textarea class="input-field" type="text" placeholder="Input" name="input"></textarea>&nbsp;&nbsp;
							<i class="fa fa-sign-out icon"></i>
							<textarea class="input-field" type="text" placeholder="Output" name="output"></textarea>&nbsp;&nbsp;
							<i class="fa fa-podcast icon"></i>
							<textarea class="input-field" type="text" placeholder="Constraints" name="constraints"></textarea>
						  </div>

						  <div class="input-container">
							<i class="fa fa-bolt icon"></i>
							<textarea class="input-field" type="text" placeholder="Example Input" name="egInput"></textarea>&nbsp;&nbsp;
							<i class="fa fa-flag-o icon"></i>
							<textarea class="input-field" type="text" placeholder="Example Output" name="egOutput"></textarea>
						  </div>

						 <button onclick="save_ques.do" class="btn">DONE</button>
					 </form>
					</div>
					<!--end-->

					<!--start-->
					<div id='fetch_form' class='col-12'>
						<form style="width:100%;margin-top:2%;">

						  <h2 style='color:#00154f;font-weight:bold;'>Question</h2>

						  <div class="input-container">
							<i class="fa fa-envelope icon"> Title </i>
							<input class="input-field" id='title' readonly>
						  </div>
						  
						  <div class="input-container" style="height:150px;">
							<i class="fa fa-question icon">Problem</i>
							<textarea readonly id='problem' class="input-field"></textarea>
						  </div>

						  <div class="input-container" style="height:100px;">
							<i class="fa fa-sticky-note-o icon">Input</i>
							<textarea readonly id = 'input' class="input-field"></textarea>&nbsp;&nbsp;
						  </div>

						  <div class="input-container" style="height:100px;">
							<i class="fa fa-sign-out icon">Output</i>
							<textarea readonly id = 'output' class="input-field"></textarea>
						  </div>

						  <div class="input-container" style="height:100px;">
							<i class="fa fa-podcast icon">Constraints</i>
							<textarea readonly id ='constraints'  class="input-field"></textarea>
						  </div>


						  <div class="input-container" style="height:150px;">
							<i class="fa fa-bolt icon">Eg. Input</i>
							<textarea readonly id = 'egInput' class="input-field"></textarea>&nbsp;&nbsp;
							<i class="fa fa-flag-o icon">Eg. Output</i>
							<textarea readonly id = 'egOutput' class="input-field" ></textarea>
						  </div>
					 </form>
					</div>
					<!--end-->

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
	<script src = "static/js/comman.js"></script>
	<script src = "static/js/cp.js"></script>
 </body>
</html>
