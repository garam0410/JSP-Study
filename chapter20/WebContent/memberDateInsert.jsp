<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*" %>
    
    <%!
    	Connection connection;
    	Statement statement;
    	ResultSet resultSet;
    	PreparedStatement preparedStatement;
    	
    	String driver = "oracle.jdbc.driver.OracleDriver";
    	String url = "jdbc:oracle:thin:@localhost:1521:xe";
    	String uid = "scott";
    	String upw = "tiger";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	try{
		
		Class.forName(driver);
		connection = DriverManager.getConnection(url,uid,upw);
		int n;
		
		String query = "insert into mamberforpre(id, pw, name, phone) values (?,?,?,?)";
		preparedStatement = connection.prepareStatement(query);
		
		preparedStatement.setString(1, "abc");
		preparedStatement.setString(2, "123");
		preparedStatement.setString(3, "홍길동");
		preparedStatement.setString(4, "010-1234-5678");
		n = preparedStatement.executeUpdate();
		
		preparedStatement.setString(1, "def");
		preparedStatement.setString(2, "456");
		preparedStatement.setString(3, "홍길자");
		preparedStatement.setString(4, "010-9012-3456");
		n = preparedStatement.executeUpdate();
		
		preparedStatement.setString(1, "ghi");
		preparedStatement.setString(2, "789");
		preparedStatement.setString(3, "홍길순");
		preparedStatement.setString(4, "010-7890-1234");
		n = preparedStatement.executeUpdate();
		
		preparedStatement.setString(1, "jkl");
		preparedStatement.setString(2, "012");
		preparedStatement.setString(3, "이길동");
		preparedStatement.setString(4, "010-1234-1111");
		n = preparedStatement.executeUpdate();
		
		if(n == 1){
			out.println("insert success");
		}else{
			out.println("insert fail");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(resultSet != null) resultSet.close();
			if(statement != null) statement.close();
			if(connection != null) connection.close();
		}catch(Exception e2){
			e2.printStackTrace();
		}
	}
%>
</br>
<a href="memberDateView.jsp">회원정보 보기</a>

</body>
</html>