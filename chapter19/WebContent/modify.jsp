<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%!
	String name, id, pw, phone1, phone2, phone3, gender;
	Connection connection;
	Statement statement;
	ResultSet resultSet;
%>

<%
	id = (String)session.getAttribute("id");
	
	String query = "select * from member where id = '" + id + "'";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
	statement = connection.createStatement();
	resultSet = statement.executeQuery(query);
	
	while(resultSet.next()){
		name = resultSet.getString("name");
		pw = resultSet.getString("pw");
		phone1 = resultSet.getString("phone1");
		phone2 = resultSet.getString("phone2");
		phone3 = resultSet.getString("phone3");
		gender = resultSet.getString("gender");
	}
	
%>

<form action="ModifyOk" method="post">
	�̸� : <input type="text" name="name" size="10" value=<%=name %>><br/>
	���̵� : <%=id %><br/>
	��й�ȣ : <input type="text" name="pw" size="10"><br/>
	��ȭ��ȣ : <select name="phone1">
		<option value="010">010</option>
		<option value="010">016</option>
		<option value="010">017</option>
		<option value="010">018</option>
		<option value="010">019</option>
		<option value="010">011</option>
	</select> - 
	<input type="text" name="phone2" size="5" value=<%=phone2 %>> - <input type="text" name="phone3" size="5" value=<%=phone3 %>></br>
	
	<%
		if(gender.equals("man")){
	%>
	
	�������� : <input type="radio" name="gender" value="man" checked="checked">�� &nbsp; <input type="radio" name="gender" value="woman">��</br>
	<%
		} else{
	%>
	
	�������� : <input type="radio" name="gender" value="man">�� &nbsp; <input type="radio" name="gender" value="woman" checked="checked">��</br>
	<%
		}
	%>
	
	<input type="submit" value="��������"> <input type="reset" value="���">
	</form>
	
</body>
</html>