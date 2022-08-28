function postInfo() {
	let postid = event.target.dataset.id;
	const xhr = new XMLHttpRequest();
    xhr.open('GET', 'post/view?postid='+postid);
    xhr.send(); 
    
	xhr.onreadystatechange = function (e) {
        if (xhr.readyState !== XMLHttpRequest.DONE) return;

        if (xhr.status === 200) {
          console.log(xhr.response);
			
        } else {
          console.log(`[${xhr.status}] : ${xhr.statusText}`);
        }
      };
	
	
    document.querySelector('.post-detail').classList.remove('hidden');
}

function modalClose() {
    document.querySelector('.post-detail').classList.add('hidden');
}