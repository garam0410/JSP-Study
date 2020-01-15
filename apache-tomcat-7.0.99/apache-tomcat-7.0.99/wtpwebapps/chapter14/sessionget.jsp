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
	Object obj1 = session.getAttribute("mySessionName"); // 데이터 얻음
	String mySessionName = (String)obj1;
	out.println(mySessionName + "</br>");
	
	Object obj2 = session.getAttribute("myNum"); // 데이터 얻음
	Integer myNum = (Integer)obj2;
	out.println(myNum + "</br>");
	
	out.println("******************************</br>");
	
	String sName;
	String sValue;
	Enumeration enumeration = session.getAttributeNames(); // 세션에 저장된 모든 데이터의 이름(Name)을 enumeration에 저장
	
	while(enumeration.hasMoreElements()){ // hasMoreElements : enumeration에 요소가 있다면 true, 아니면 false
		sName = enumeration.nextElement().toString(); // nextElement : 요소가 있다면 반환
		sValue = session.getAttribute(sName).toString();
		out.println("sName : " + sName + "</br>");
		out.println("sValue : " + sValue + "</br>");
	}
	
	out.println("******************************</br>");
	
	String sessionID = session.getId();
	out.println("sessionID : " + sessionID + "</br>");
	int sessionInter = session.getMaxInactiveInterval(); // 세션 유효시간
	out.println("sessionInter : " + sessionInter + "</br>");
	
	out.println("******************************</br>");
	
	session.removeAttribute("mySessionName"); // 세션에서 "mySessionName"의 데이터 제거
	Enumeration enumeration1 = session.getAttributeNames();
	while(enumeration1.hasMoreElements()){
		sName = enumeration1.nextElement().toString();
		sValue = session.getAttribute(sName).toString();
		out.println("sName : " + sName + "</br>");
		out.println("sValue : " + sValue + "</br>");
	}
	
	out.println("******************************</br>");
	
	session.invalidate(); // 세션의 모든 데이터 삭제
	if(request.isRequestedSessionIdValid()){
		out.println("session valid");
	}
	else{
		out.println("session invalid");
	}
%>
</body>
</html>