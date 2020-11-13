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
	<h1>boardOne</h1>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include><br>
	<table class="table table-bordered table-hover">
		<tr>
			<td style="width:150px">board_id</td>
			<td>${board.boardId}</td>
		</tr>
		<tr>
			<td>board_title</td>
			<td>${board.boardTitle}</td>
		</tr>
		<tr>
			<td style="height:300px">board_content</td>
			<td style="height:300px">${board.boardContent}</td>
		</tr>
		<tr>
			<td>board_writer</td>
			<td>${board.boardWriter}</td>
		</tr>
		<tr>
			<td>
			<button class="btn btn-sm btn-outline-dark" onclick="location.href='/modifyBoard?boardId=${board.boardId}'" type="submit">수정</button>
			<button class="btn btn-sm btn-outline-dark" onclick="location.href='/boardList'" type="submit">목록</button>
			</td>
		</tr>
	</table>
</body>
</html>