<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>UMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script>
function alert_end() {
	swal({
		title : "종료하시겠습니까?",
		type : "warning",
		showCancelButton : true,
		cancelButtonText : "아니오",
		confirmButtonText : "네",
		closeOnConfirm : false
	}, function() {
		swal("종료", "시스템이 종료됩니다.");
	});
}
</script>
<style>
h1 {
	text-align: center;
}
.off {
	float: right;
	margin: 20px;
}
</style>
</head>
<body>
	<div class='container'>
		<div class='off'>
			<button type='button' class='btn btn-default'
				onClick='alert_end()'>
				<span class='glyphicon glyphicon-off'></span>
			</button>
		</div>
		<div class='jumbotron'>
			<h1>UMS</h1>
		</div>
		<form action='addUserProc.jsp'>
			<h2>사용자 추가</h2>
			<hr>
			<p>추가 할 사용자 이름을 입력하세요.</p>
			<label>이름 &nbsp;<input type='text' name='userName' /></label> <br>
			<br>
			<button class='btn btn-success'>
				<span class='glyphicon glyphicon-plus'> 추가</span>
			</button>
			<button type='submit' class='btn btn-danger' formaction='../main.jsp'>
				<span class='glyphicon glyphicon-remove'> 취소</span>
			</button>
		</form>
	</div>