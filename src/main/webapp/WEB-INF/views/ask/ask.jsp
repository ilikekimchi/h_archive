<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
	<link  href="/css/ask.css" rel="stylesheet">
	<link  href="/css/reset.css" rel="stylesheet">
	<script src="/js/ask.js" type="text/javascript"> </script>
	<script src="https://kit.fontawesome.com/5ea47adb73.js" crossorigin="anonymous"></script>
<title>사용자 페이지</title>
</head>
<body>	
	<div id="page-wrap">
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
		
    <div id="content-wrap">
        <div>
            <form method="post" action="/ask/question">
                <textarea name="question" id="question" spellcheck="false" rows="1"></textarea>
                <button type="submit" id="send">
                	<i class="fa-solid fa-plus"></i>
                </button>
            </form>
        </div>
		

        <ul id="qna-list">
        <c:forEach var="list" items="${askList}">
            <li class="qna">
                <div class="q-wrap">
                    <span class="q text-box">${list.question}</span>
                </div>

                <div class="a-wrap">
                    <span class="a text-box">${list.answer}</span>
                </div>
            </li>
            </c:forEach>
        </ul>
    </div>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
    </div>
</body>
</html>