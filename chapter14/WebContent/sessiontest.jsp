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
		Enumeration enumeration = session.getAttributeNames();
		if(enumeration.hasMoreElements() == true){
			while(enumeration.hasMoreElements()){
				String sName = enumeration.nextElement().toString();
				String sValue = session.getAttribute(sName).toString();
				
				out.println(sName + sValue + "</br>");
			}
		}
		
		else{
			out.println("������ �����ϴ�.</br>");
		}
		
	%>
	<a href="login.html">�ٽ� �α����ϱ�</a>
</body>
</html>