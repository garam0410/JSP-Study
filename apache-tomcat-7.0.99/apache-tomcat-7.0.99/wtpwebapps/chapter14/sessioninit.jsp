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
	session.setAttribute("mySessionName", "mySessionData"); //데이터 저장
	session.setAttribute("myNum", 12345); // 데이터 저장
%>

<a href="sessionget.jsp">session get</a> // 데이터 전송

</body>
</html>