<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

@charset "UTF-8";

#header-wrap {
	display: flex;
	justify-content: space-between;
	margin-bottom: 40px;
}

#page-title {
	letter-spacing: -1px;
	margin: 40px 0px 0px 0px;
}

.header-menu {
	margin: 50px 0px 0px 0px;
	padding: 0px 5px;
	display: flex;
}

.menu-list a {
	color: #000;
	font-size: 18px;
	margin-left: 30px;
}

.menu-list a:hover {
	font-weight: 600;
}

</style>

</head>
<body>
	<header id="header-wrap">
        <h1 id="page-title">H_archive</h1>
        <ul class="header-menu">
            <li class="menu-list"><a href="/">메인</a></li>
            <li class="menu-list"><a href="ask">질게</a></li>
            <li class="menu-list"><a href="about">소개</a></li>
        </ul>
    </header>
</body>
</html>