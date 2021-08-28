<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <link rel='stylesheet' type='text/css' href='static/css/bootstrap.css'>
  <link rel='stylesheet' type='text/css' href='static/css/index.css'>
  <link rel='stylesheet' type='text/css' href='static/css/dashboard.css'>
  <link rel='stylesheet' type='text/css' href='static/css/notes.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Notes</title>
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
				<!-- note main-->
				<div id='_notes' class='div_titles' >
					
					<div id = "fetch_data" class = 'col-12'>
					</div>
					
					<div id='add'  class='row'>
						<span id='add_span'>Add Notes</span>
					</div>

				</div>
				<!-- note main-->

				<!-- save data-->
				<div id ='save_data'>
					<form  action="save_notes.do" id ='form_save' method='post' enctype="multipart/form-data">

						  <h2 style='color:#00154f;font-weight:bold;'>File Upload</h2>

						  <div class="input-container">
							<i class="fa fa-envelope icon"></i>
							<input class="input-field" type="text" placeholder="Subject" name="subject">
						  </div>
						  
						  <div class="input-container" ">
							<i class="fa fa-code icon"></i>
							<select name='branch_id'>
								<option value='0'>Branch</option>
									<c:forEach var='branch' items='${branches}'>
										<option value='${branch.branchId}'>${branch.branch}</option>
									</c:forEach>
							</select>
						  </div>

						  <div class="input-container">
							<i class="fa fa-sticky-note-o icon"></i>
							<input class="input-field" type="file" placeholder="Input" name="path"/>
						  </div>

						 <button type='submit' class="btn">DONE</button>
					 </form>
				</div>
				<!-- save data-->

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
	<script src='static/js/comman.js'></script>
	<script src='static/js/notes.js'></script>
 </body>
</html>
