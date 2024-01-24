function alertFunc(msg, status){
	Swal.fire({
		icon: status,
		title: status,
		text: msg
	});
	
	/*if(msg !== "null") {
		alert(msg);
	}*/
}

