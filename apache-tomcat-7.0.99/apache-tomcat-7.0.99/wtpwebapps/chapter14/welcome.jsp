<%@page import="java.util.Enumeration"%>
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
	String sName;
	String sValue;
%>

<%
	/*Object obj1 = session.getAttribute("id");
	Object obj2 = session.getAttribute("pw");
	
	id = (String)obj1;
	pw = (String)obj2;
	
	out.println("id : " + id + "</br>");
	out.println("pw : " + pw + "</br>");*/
	
	Enumeration enumeration = session.getAttributeNames();
	while(enumeration.hasMoreElements()){
		sName = enumeration.nextElement().toString();
		sValue = session.getAttribute(sName).toString();
		out.println(sName + " : "+ sValue + "</br>");
		//out.println("pw : " + pw + "</br>");
	}
%>
<a href=logout.jsp>로그아웃</a>
</body>
</html>