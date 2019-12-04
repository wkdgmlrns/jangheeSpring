<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>
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
			<a class="navbar-brand" href="home">게시판 웹</a>
		</div>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="list">게시판 보러가기</a>
				<li><a href="write">게시글 작성</a>
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
		<div class="row">
			<form method="post">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="2"
								style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<td class="form-contorl" width="10%" >제목</td>
							<td class="form-control"
								 width="90%"> ${view.title}</td>
						</tr>
						<tr>
						<td class="form-contorl" width="10%" >작성자</td>
							<td class="form-control"
								width="90%">${view.writer}</td>
						</tr>
						<tr>
						<td class="form-contorl" width="10%" >내용</td>
							<td class="form-control"
									width="90%"
									style="height: 350px;">${view.content}</td>
						</tr>
					</tbody>
				</table>
				<a class="btn btn-primary pull-right" href="/board/modify?board_id=${view.board_id }">수정하기</a>
				<a class="btn btn-primary pull-right" href="/board/delete?board_id=${view.board_id }">삭제하기</a>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>