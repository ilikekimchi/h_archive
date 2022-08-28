<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link href="/css/reset.css" rel="stylesheet">
	<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<title>POSTING</title>
<style type="text/css">
	
#title {
    width: 50%;
    outline: none;
    border: 1px solid #c4c4c4;
    margin-bottom: 15px;
    font-family: "Gowun Dodum";
    font-size: 16px;
    padding: 9.6px;
}


.btn-wrap {
    display: flex;
    justify-content: center;
}

.btn {
    margin-top: 15px;
    margin-right: 10px;
    background-color: var(--1-color);
    padding: 4px 10px;
    font-size: 16px;
}

.btn:hover {
    background-color: var(--2-color);
    transition: .3s;
}
	
</style>
</head>
<body>
	<div id="page-wrap">
		<div id="content-wrap">
			<form method="post" action="/post/add">
				<input type="text" name="title" id="title" placeholder="제목">
				<textarea name="content" id="content" placeholder="내용"></textarea>
                <div class="btn-wrap">
                    <a href="" class="btn">취소</a> <!-- 뒤로가기 -->
                    <button type="submit" class="btn">등록</button>
                </div>
			</form>

            <script>
                ClassicEditor
                .create(document.querySelector('#content'))
                .catch(error=>{
                    console.error(error);
                });
            </script>

		</div>
	</div>
</body>
</html>