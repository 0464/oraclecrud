<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyBoard</title>
<!-- 부트스트랩  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="container">
	<h1>modifyBoard</h1>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include><br>
	<form method="post" action="/modifyBoard">
	<table class="table table-bordered table-hover">
		<tr>
			<td style="width:150px">board_id</td>
			<td><input type="text" name="boardId" value="${list.boardId}" readonly="readonly"></td>
		</tr>
		<tr>
			<td>board_title</td>
			<td><input type="text" name="boardTitle" value="${list.boardTitle}"></td>
		</tr>
		<tr>
			<td style="height:300px">board_content</td>
			<td style="height:300px">
				<textarea rows="10" cols="130" name="boardContent">${list.boardContent}</textarea>
			</td>
			
		</tr>
		<tr>
			<td>board_writer</td>
			<td><input type="text" name="boardWriter" value="${list.boardWriter}"></td>
		</tr>
		<tr>
			<td>
				<button class="btn btn-sm btn-outline-dark" type="submit">확인</button>
				<button class="btn btn-sm btn-outline-dark" onclick="location.href='/boardList'" type="button">취소</button>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>