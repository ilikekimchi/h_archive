<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/reset.css" rel="stylesheet">
<title>포스팅 목록</title>
<style type="text/css">

#posting {
	background-color: #F5F7FB;
    padding: 2px 8px;
    border-radius: 3px;
}

#posting:hover {
    background-color: #D7E6FE;
}

.post-detail {
	position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    z-index:99;
}

.modal-overlay {
    background-color: rgba(0, 0, 0, 0.4);
    width: 100%;
    height: 100%;
    position: absolute;
}

.modal-content {
    background-color: #fff;
    padding: 5px 10px;
    text-align: center;
    position: relative;
    height: 90%;
    width: 40%;
    border-radius: 6px;
    top: 0px; /* ? */
    overflow-y: auto;
}

.hidden {
    display: none;
}

.close-btn {
    position: absolute;
    right: 10px;
    top: 0px;
    font-size: 25px;
}

a {
	color: #000;
}

li {
	margin-bottom: 25px;	
}

</style>

<script type="text/javascript">
	function post_delete(postid) {
		
		console.log(postid);
		
		const xhr = new XMLHttpRequest();
		
		xhr.open('GET', 'post/list/delete?postid=' + postid);
		
		xhr.send();
		
		xhr.onload = () => {
			if(xhr.status == 200) {
				console.log("success");
			} else {
				console.log("fail")
			}
		}
	}
</script>
</head>
<body>
	<div id="page-wrap">
		<div id="content-wrap">
			<a href="add" id="posting">포스팅</a>

			<ul>
				<c:forEach var="list" items="${postList}">
					<li>
						<span>${list.postid}. </span>
						<span>${list.title} / </span>
						<a href="${list.postid}/modify">수정</a>
						<button onclick="post_delete(${list.postid})">삭제</button>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>

</body>
</html>