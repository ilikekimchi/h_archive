<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link  href="/css/reset.css" rel="stylesheet">
<title>소개</title>
</head>
<body>

	<div id="page-wrap">
	
		<%@ include file="/WEB-INF/views/include/header.jsp" %>
		
		<div id="content-wrap">
		${info.content}
		</div>
		
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	</div>
	
</body>
</html>