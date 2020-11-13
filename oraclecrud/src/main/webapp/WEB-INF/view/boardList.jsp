<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList</title>
<!-- 부트스트랩  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="container">
	<h1>boardList</h1>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include><br>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>board_id</th>
				<th>board_title</th>
				<th>board_content</th>
				<th>board_writer</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${list}">
			<tr>
				<td>${item.boardId}</td>
				<td><a href="/boardOne?boardId=${item.boardId}">${item.boardTitle}</a></td>
				<td>${item.boardContent}</td>
				<td>${item.boardWriter}</td>
				<td style="width:80px">
				<button class="btn btn-sm btn-outline-dark" onclick="location.href='/deleteBoard?boardId=${item.boardId}'" type="submit">삭제</button>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>