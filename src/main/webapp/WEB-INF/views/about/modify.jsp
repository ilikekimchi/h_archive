<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="/js/ckeditor.js"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<title>소개관리</title>
</head>
<body>
	<form action="modify" method="post">
		<textarea name="content" id="content">
			${info.content}
		</textarea>
		<button type="submit">수정</button>
	</form>
<script>
ClassicEditor
.create(document.querySelector('#content'))
.catch(error=>{
	console.error(error);
});
</script>
</body>
</html>
