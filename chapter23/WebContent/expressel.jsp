<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="member" class="chapter23.MemberInfo" scope="page" />
    <jsp:setProperty name="member" property="name" value="홍길동"/>
    <jsp:setProperty name="member" property="id" value="abc"/>
    <jsp:setProperty name="member" property="pw" value="123"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	이름 : <jsp:getProperty property="name" name="member"/><br/>
	아이디 : <jsp:getProperty property="id" name="member"/><br/>
	비밀번호 : <jsp:getProperty property="pw" name="member"/><br/>
	
	<hr/>
	
	이름 : ${member.name }<br/>
	아이디 : ${member.id }<br/>
	비밀번호 : ${member.pw }<br/>
</body>
</html>