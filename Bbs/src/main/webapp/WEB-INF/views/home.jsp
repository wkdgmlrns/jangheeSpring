<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<title>Home</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">게시판 웹</a>
		</div>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/board/list">게시판 보러가기</a>
				<li><a href="/board/write">게시글 작성</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>

		</div>
	</nav>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol	class="carousel-indicators">
				<li data-taget="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-taget="#myCarousel" data-slide-to="1"></li>
				<li data-taget="#myCarousel" data-slide-to="2"></li>			
				<li data-taget="#myCarousel" data-slide-to="3"></li>			
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/images/dongguk.jpg" width="1200" height="200">
				</div>
				<div class="item">
					<img src="resources/images/dongguk2.jpg" width="1200" height="200">
				</div>
				<div class="item">
					<img src="resources/images/dongguk3.jpg" width="1200" height="400">
				</div>
				<div class="item">
					<img src="resources/images/dongguk4.jpg" width="1200" height="400">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>
