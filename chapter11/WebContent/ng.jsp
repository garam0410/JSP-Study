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
		out.println("당신의 나이는 "+age+"세 입니다.");
		out.println("주류 구입이 불가능합니다.");
	%>
	<a href="re01.html"> 처음으로 이동 </a>
</body>
</html>