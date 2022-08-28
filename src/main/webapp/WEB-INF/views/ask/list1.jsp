<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link  href="/css/ask_list.css" rel="stylesheet">
<title>ASK</title>
</head>

<body>
	<div id="content-wrap">

		<div id="tab-box">
			<a href="list1" class="btn-style unans">미답변 목록</a>
			<a href="list2" class="btn-style ans">답변 목록</a>
		</div>

		<ul class="ask-list-unans">
			<c:forEach var="list" items="${askList}">
				<li>
					<form method="post" action="list/ans_add">
						<div>
							<div>
								<input type="hidden" name="askid" value="${list.askid}">
								<span>${list.askid}. </span>
								<span>${list.question}</span>
								<!-- <span class="date"> - 22.02.03 17:50</span> -->
							</div>
							<div>
								<textarea class="ans-input" name="answer"></textarea>
							</div>
							<div>
								<button type="submit" class="btn-style">전송</button>
								<a href="${list.askid}/question_delete" class="btn-style">삭제</a>
							</div>
						</div>
					</form>
				</li>
			</c:forEach>
		</ul>
        
	</div>

</body>
</html>