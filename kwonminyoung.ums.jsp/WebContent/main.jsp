<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ page import='kwonminyoung.ums.user.service.UserService'%>
<%@ page import="kwonminyoung.ums.user.service.UserServiceImpl"%>
<%@ page import='kwonminyoung.ums.user.domain.User'%>
<%@ page import='java.util.*'%>
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
th, td, h1 {
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
		<h2>사용자 목록</h2>
		<form>
		<table class="table table-hover">
			<thead>
				<tr>
					<th class='col-md-2'>번호</th>
					<th class='col-md-5'>이름</th>
					<th class='col-md-5'>날짜</th>
				</tr>
			</thead>
			<tbody>
<%
					UserService userService = new UserServiceImpl();
					List<User> users = userService.listUsers();
					if (users.size() != 0)
						for (User user : users) {
%>
				<tr>
					<td><input type='radio' name='optradio'
						value='<%=user.getUserNo()%>'> <%=user.getUserNo()%></td>
					<td><%=user.getUserName()%></td>
					<td><%=user.getRegDate()%></td>
				</tr>
<%
					}
%>
			</tbody>
		</table>
			<button class='btn btn-success' formaction='user/addUser.jsp'>
				<span class='glyphicon glyphicon-plus'> 추가</span>
			</button>
			<button class='btn btn-warning' formaction='user/modUser.jsp'>
				<span class='glyphicon glyphicon-pencil'> 수정</span>
			</button>
			<button class='btn btn-danger' formaction='user/delUserProc.jsp'>
				<span class='glyphicon glyphicon-remove'> 삭제</span>
			</button>
		</form>
	</div>
</body>
</html>