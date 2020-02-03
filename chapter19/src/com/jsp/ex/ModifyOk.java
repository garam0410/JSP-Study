package com.jsp.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ModifyOk
 */
	

@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
		String name, id, pw, phone1, phone2, phone3, gender;
		
		private Connection connection;
		private Statement statement;
		private ResultSet resultSet;
		HttpSession httpSession;
		
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("EUC-KR");
		
		httpSession = request.getSession();
		
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		gender = request.getParameter("gender");
		
		if(pwConfirm()) {
			System.out.println("OK");
			
			String query = "update member set name='" + name + "', phone1='" + phone1 + "',phone2 = '" + phone2 + "', phone3 = '"+phone3+"',gender = '" + gender + "'";
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:121:xe", "scott", "tiger");
				statement = connection.createStatement();
				
				int i = statement.executeUpdate(query);
				
				if(i==1) {
					System.out.println("update success");
					httpSession.setAttribute("name", name);
					response.sendRedirect("modifyResult.jsp");
				}
				else {
					System.out.println("update fail");
					response.sendRedirect("modify.jsp");
				}
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				try {
					if(statement != null) statement.close();
					if(connection != null) connection.close();
					//if(resultSet != null) resultSet.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		else {
			System.out.println("NG");
		}
	}
	
	private boolean pwConfirm() {
		boolean rs = false;
		
		String sessionPw = (String)httpSession.getAttribute("pw");
		
		if(sessionPw.equals(pw)) {
			rs = true;
		}else {
			rs = false;
		}
		return rs;
	}
}
