var add_span,add_ques,show_ques,ques;
var fetch_form;

var title,problem,input,output,constraints,egInput,egOutput;

function getAllElements(){
	//alert("elements");
	add_span = document.getElementById('add_span');
	add_ques = document.getElementById('add_ques');
	show_ques = document.getElementById('show_ques');
	ques = document.getElementById('ques');
	fetch_form = document.getElementById('fetch_form');
	title = document.getElementById('title');
	problem = document.getElementById('problem');
	input = document.getElementById('input');
	output = document.getElementById('output');
	constraints = document.getElementById('constraints');
	egInput = document.getElementById('egInput');
	egOutput = document.getElementById('egOutput');
}

function setAllActions(){
	//alert("actions");
	add_span.onclick = divChanger;
	collectAllQuestions();
}

function divChanger(){
	//alert('changer');
	add_ques.style.display = 'inline';
	show_ques.style.display = 'none';

}

var allques;
function collectAllQuestions(){
	allques = new XMLHttpRequest();
	allques.open('get','collectques.do',true);
	allques.onreadystatechange = showAllQuestions;
	allques.send();
}

function showAllQuestions(){
	//alert(allques.readyState+'---'+allques.status);
	//alert(allques.responseText);
	if(allques.readyState==4&&allques.status==200){
		var res = JSON.parse(allques.responseText);
		for (i=0;i<res.length;i++){
			var dv = document.createElement("div");
			
			var sp1 = document.createElement("span");
			var sp2 = document.createElement("span");
			var sp3 = document.createElement("span");
			var sp4 = document.createElement("span");
			var sp5 = document.createElement("span");

			var del_img = document.createElement("img");
			var edit_img = document.createElement("img");
			
			del_img.src = "static/image/delete.png";
			edit_img.src = "static/image/pen.jpg";
			
			dv.className = 'dv_reco';
			sp1.className = 'sp1_reco';
			sp2.className = 'sp2_reco';
			sp3.className = 'sp3_reco';
			sp4.className = 'sp4_reco';
			sp5.className = 'sp5_reco';

			del_img.className = "del_img";
			edit_img.className = "edit_img";


			var sno = res[i].sno;
			var title = res[i].title;
			var ttl = title.substr(0,8);
			var created = res[i].created;
			var creat = created.substr(0,12);
			

			sp1.append("Ques.");
			sp2.append(ttl+"...");
			sp3.append('Created Date : '+creat);
			sp4.append(del_img);
			sp5.append(edit_img);

			dv.append(sp1);
			dv.append(sp2);
			dv.append(sp3);
			dv.append(sp4);
			dv.append(sp5);
			ques.append(dv);

			del_img.sno = res[i].sno;
			sp2.sno = res[i].sno;

			del_img.onclick = delRecord;
			sp2.onclick = fetchingData;
		}
	}
}

var del_recs
function delRecord(){
	//alert(this.sno);
	del_recs = new XMLHttpRequest();
	del_recs.open("post","del_rec.do?sno="+this.sno,false);
	del_recs.onreadystatechange = confirm_del;
	del_recs.send();
}

function confirm_del(){
	if (del_recs.responseText=="success"){
		//alert("hogya");
		window.location.reload();
	}else{
		window.location = "teacherlogin.jsp";
	}
}

var fetch; 
function fetchingData(){
	//alert(this.sno);
	fetch  = new XMLHttpRequest();
	fetch.open('post','fetch_data.do?sno='+this.sno,true);
	fetch.onreadystatechange = afterFetching;
	fetch.send();
}

function afterFetching(){
	//alert(fetch.readyState+"+++"+fetch.status);
	//alert(fetch.responseText);
	if(fetch.readyState==4&&fetch.status==200){
		show_ques.style.display = 'none';
		fetch_form.style.display = 'inline';
		var res = JSON.parse(fetch.responseText);
		title.value = res.title;
		problem.value = res.problem
		input.value = res.input
		output.value = res.output
		constraints.value = res.constraints
		egInput.value = res.egInput
		egOutput.value = res.egOutput
	}
	
}
