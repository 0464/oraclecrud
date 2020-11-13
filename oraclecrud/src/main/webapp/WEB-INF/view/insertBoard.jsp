<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertBoard</title>
<!-- 부트스트랩  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body class="container">
	<h1>insertBoard</h1>
	<jsp:include page="/WEB-INF/view/inc/menu.jsp"></jsp:include><br>
	<form method="post" action="/insertBoard">
		<table class="table table-bordered table-hover">
			<tr>
				<td style="width:100px">board_id</td>
				<td></td>
			</tr>
			<tr>
				<td>board_title</td>
				<td><input type="text" name="boardTitle" placeholder="제목"></td>
			</tr>
			<tr>
				<td>board_content</td>
				<td>
					<textarea rows="10" cols="150" name="boardContent" placeholder="내용을 입력하세요"></textarea>
					</td>
			</tr>
			<tr>
				<td>board_writer</td>
				<td><input type="text" name="boardWriter" placeholder="작성자"></td>
			</tr>
		</table>
		<button class="btn btn-sm btn-outline-dark" type="submit">작성하기</button>
	</form>
</body>
</html>