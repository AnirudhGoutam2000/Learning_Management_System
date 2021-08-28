var add_span,fetch_data,save_data,add,_notes;
function getAllElements(){
	//alert("get");
	add_span = document.getElementById('add_span');
	fetch_data = document.getElementById('fetch_data');
	save_data = document.getElementById('save_data');
	add = document.getElementById('add');
	_notes = document.getElementById('_notes');
}
function setAllActions(){
	add_span.onclick = function(){
						_notes.style.display = 'none';
						add.style.display = 'none';
						save_data.style.display = 'inline';
						}
}