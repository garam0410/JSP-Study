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

<%
	int[] iArr = {10,20,30};
	out.println(Arrays.toString(iArr));
	out.println("page.jsp �Դϴ�.");
%>

<%@ include file = "include.jsp"%>

</body>
</html>