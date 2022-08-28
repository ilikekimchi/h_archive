/*function submit() {
    let question = document.querySelector('#question').value;
    
    const xhr = new XMLHttpRequest();
	
	alert(question);
	
    xhr.open('POST', '/ask/question', true);

    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

    xhr.send(question);

    xhr.onreadystatechange = () => {
        if (xhr.readyState == XMLHttpRequest.DONE) {
            if (xhr.status == 200) {
				console.log("hi");
                location.reload();

            }
        }

    };

}*/