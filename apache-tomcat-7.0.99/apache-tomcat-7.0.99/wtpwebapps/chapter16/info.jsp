<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="student" class="com.jsp.ex.Student" scope="page"></jsp:useBean>
    <jsp:useBean id="student2" class="com.jsp.ex.Student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty name="student" property="name" value="ȫ�浿" />
	<jsp:setProperty name="student" property="age" value="10"/>
	<jsp:setProperty property="grade" name="student" value="3"/>
	<jsp:setProperty property="studentNum" name="student" value="27"/>
	
	�̸� : <jsp:getProperty property="name" name="student"/><br/>
	���� : <jsp:getProperty property="age" name="student"/><br/>
	�г� : <jsp:getProperty property="grade" name="student"/><br/>
	�й� : <jsp:getProperty property="studentNum" name="student"/><br/>
	</br>
	
	<jsp:setProperty name="student" property="name" value="�谡��" />
	<jsp:setProperty name="student" property="age" value="24"/>
	<jsp:setProperty property="grade" name="student" value="3"/>
	<jsp:setProperty property="studentNum" name="student" value="20162872"/>
	
	�̸� : <jsp:getProperty property="name" name="student"/><br/>
	���� : <jsp:getProperty property="age" name="student"/><br/>
	�г� : <jsp:getProperty property="grade" name="student"/><br/>
	�й� : <jsp:getProperty property="studentNum" name="student"/><br/>
</body>
</html>