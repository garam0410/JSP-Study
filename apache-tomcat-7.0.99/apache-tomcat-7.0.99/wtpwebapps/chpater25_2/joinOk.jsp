<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.jsp.ex.*" %>
    <% request.setCharacterEncoding("EUC-KR"); %>
    <jsp:useBean id="dto" class="com.jsp.ex.MemberDto"/>
    <jsp:setProperty name="dto" property="*"/>
    
    <%
		dto.setrDate(new Timestamp(System.currentTimeMillis()));
		MemberDao dao = MemberDao.getInstance();
		if(dao.confirmId(dto.getId()) == MemberDao.MEMBER_EXISTENT){
	%>
	
		<script language="javascript">
			alert("���̵� �̹� ���� �մϴ�.");
			history.back();
		</script>
		
	<%
		}else{
			int ri = dao.insertMember(dto);
			if(ri == MemberDao.MEMBER_JOIN_SUCCESS){
				session.setAttribute("id", dto.getId());
	%>
		<script language="javascript">
			alert("ȸ�������� ���� �մϴ�.");
			document.location.href="login.jsp";
		</script>
	<%
		}else{
	%>
	
		<script language="javascript">
			alert("ȸ�����Կ� �����߽��ϴ�.");
			document.location.href="login.jsp";
		</script>
		<%
			}
		}
		%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>