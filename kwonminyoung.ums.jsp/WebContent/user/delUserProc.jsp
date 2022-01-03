<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ page import="kwonminyoung.ums.user.service.UserServiceImpl"%>
<%@ page import='kwonminyoung.ums.user.service.UserService'%>
<%@ page import='kwonminyoung.ums.user.domain.User'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	UserService userService = new UserServiceImpl();
	String userName = request.getParameter("userName");
	String delNum = request.getParameter("optradio");
	if (delNum != null) {
		User user = userService.findUser(Integer.parseInt(delNum));
		userService.secede(Integer.parseInt(delNum));
	}
%>
<c:redirect url='../main.jsp' />