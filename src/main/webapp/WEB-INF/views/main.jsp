<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <link  href="/css/main.css" rel="stylesheet">
    <link  href="/css/reset.css" rel="stylesheet">
	<script src="/js/main.js" type="text/javascript"> </script>
	<script src="https://kit.fontawesome.com/5ea47adb73.js" crossorigin="anonymous"></script>
<title>H_archive</title>
</head>
<body>

	<div id="page-wrap">

		<%@ include file="/WEB-INF/views/include/header.jsp" %>
		
		<div id="content-wrap">

			<div class="search-wrap">
				<form method="post" action="get">
					<input type="search" id="search" placeholder="&#61442;" spellcheck="false" autocomplete="off">
				</form>
			</div>
	
			<div class="post-detail hidden">
                <div class="modal-overlay" onclick="modalClose()"></div>
                <div class="modal-content">
                <span class="close-btn" onclick="modalClose()">
                    <i class="fa-solid fa-xmark"></i>
                </span>
                <div> </div> <!-- title -->
                <span> </span> <!-- content -->
                </div>
            </div>
			
			<ul class="post-list">
				<c:forEach var="list" items="${postList}">
					<li class="post-info">
						<div class="post-date">
							<i class="fa-regular fa-calendar-plus"></i> <span
								class="date-info">${list.date}</span>
						</div>
						<div class="post-title" data-id="${list.postid}" onclick="postInfo()">${list.title}</div>
						<div class="post-tag">
							<i class="fa-solid fa-tags"></i>
							<a href="">일대기</a>
							<a href="">일대기</a>
							<a href="">일대기</a>
						</div>
					</li>
				</c:forEach>
			</ul>

		</div>

		<%@ include file="/WEB-INF/views/include/footer.jsp" %>

	</div>

</body>
</html>