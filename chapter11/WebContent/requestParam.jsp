<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		String name, id, pw, major, protocol;
		String[] hobby;
	%>
	
	<%
		request.setCharacterEncoding("EUC-kr"); // 한글 인코딩
	%>
	
	<%
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("password");
		major = request.getParameter("major");
		protocol = request.getParameter("protocol");
		hobby = request.getParameterValues("hobby");
	%>
	
	<%
		out.println(name+"</br>");
		out.println(pw+"</br>");
		out.println(Arrays.toString(hobby)+"</br>");
		out.println(major+"</br>");
		out.println(protocol+"</br>");
	%>

</body>
</html>