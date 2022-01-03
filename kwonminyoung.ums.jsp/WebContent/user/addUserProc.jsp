<%@ page import="kwonminyoung.ums.user.service.UserServiceImpl"%>
<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ page import='kwonminyoung.ums.user.service.UserService'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	UserService userService = new UserServiceImpl();
	String userName = request.getParameter("userName");
	userService.join(userName);
%>
<c:redirect url='../main.jsp'/>