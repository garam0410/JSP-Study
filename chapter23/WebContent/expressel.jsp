<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="member" class="chapter23.MemberInfo" scope="page" />
    <jsp:setProperty name="member" property="name" value="ȫ�浿"/>
    <jsp:setProperty name="member" property="id" value="abc"/>
    <jsp:setProperty name="member" property="pw" value="123"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	�̸� : <jsp:getProperty property="name" name="member"/><br/>
	���̵� : <jsp:getProperty property="id" name="member"/><br/>
	��й�ȣ : <jsp:getProperty property="pw" name="member"/><br/>
	
	<hr/>
	
	�̸� : ${member.name }<br/>
	���̵� : ${member.id }<br/>
	��й�ȣ : ${member.pw }<br/>
</body>
</html>