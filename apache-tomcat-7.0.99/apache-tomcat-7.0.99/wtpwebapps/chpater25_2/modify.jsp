<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="com.jsp.ex.*" %>
    <%
    	String id = (String)session.getAttribute("id");
    	MemberDao dao = MemberDao.getInstance();
    	MemberDto dto = dao.getMember(id);
    	request.setCharacterEncoding("EUC-KR");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script language="JavaScript" src="members.js" charset="UTF-8"></script>
</head>
<body>
	<form action="modifyOk.jsp" method="post" name="reg_frm">
		���̵� : <%=dto.getId() %><br/>
		��й�ȣ : <input type="password" name="pw" size="20"><br/>
		��й�ȣ Ȯ�� : <input type="password" name="pw_check" size="20"><br/>
		�̸�  : <%=dto.getName() %><br/>
		���� : <input type="text" name="eMail" value="<%=dto.geteMail() %>" size="20"><br/>
		�ּ� : <input type="text" name="address" value="<%=dto.getAddress() %>" size="50"><br/>
		<input type="button" value="����" onclick="updateInfoConfirm()">&nbsp;&nbsp;&nbsp;<input type="reset" value="���" onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>