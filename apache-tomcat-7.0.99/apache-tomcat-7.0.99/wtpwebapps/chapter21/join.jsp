<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="members.js" charset="UTF-8"></script>
</head>
<body>
	<form action="joinOk.jsp" method="post" name="reg_frm">
		���̵� : <input type="text" name="id" size="20"><br/>
		��й�ȣ : <input type="password" name="pw" size="20"><br/>
		��й�ȣ Ȯ�� : <input type="password" name="pw_check" size="20"><br/>
		�̸� : <input type="text" name="name" size="20"><br/>
		���� : <input type="text" name="eMail" size="20"><br/>
		�ּ� : <input type="text" name="address" size="20"><br/>
		<input type="button" value="ȸ������" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp; <input type="reset" value="���" onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>