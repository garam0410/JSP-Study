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
		int age;
	%>
	
	<%
		String str = request.getParameter("age");
		age = Integer.parseInt(str);
	%>
	
	<%
		out.println("����� ���̴� "+age+"�� �Դϴ�.");
		out.println("�ַ� ������ �����մϴ�.");
	%>
	
	<a href="re01.html"> ó������ �̵� </a>
</body>
</html>