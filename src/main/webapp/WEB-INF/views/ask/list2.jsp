<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link  href="/css/ask_list.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/5ea47adb73.js"	crossorigin="anonymous"></script>

<title>ASK</title>
</head>
<body>
	<div id="content-wrap">

		<div id="tab-box">
			<a href="list1" class="btn-style unans">미답변 목록</a>
			<a href="list2" class="btn-style ans">답변 목록</a>
		</div>
		
	<ul class="ask-list">
            <c:forEach var="list" items="${askList}">
            <li>
                <div>
                    <span>${list.question}</span> <!-- question -->
                    <span class="date"> - 22.02.03 17:50</span>
                </div>
                <div class="answer-wrap">
                    <i class="fa-solid fa-reply"></i>
                    <span>${list.answer}</span> <!-- answer -->
                </div>
                <div class="btn-wrap">
                    <input type="hidden" name="askid" value="${list.askid}">
                    <a href="${list.askid}/answer_delete" class="btn">답변 삭제</a>
                    <a href="${list.askid}/question_delete" class="btn">질문 삭제</a>
                </div>
            </li>
            </c:forEach>
        </ul>
	</div>
</body>
</html>