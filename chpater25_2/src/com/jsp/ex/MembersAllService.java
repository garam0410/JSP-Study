package com.jsp.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

public class MembersAllService implements Service {
	public MembersAllService() {
		
	}
	
	public ArrayList<MemberDto> execute (HttpServletRequest request, HttpServletResponse response){
		
		MemberDao dao = MemberDao.getInstance();
		return dao.membersAll();
	}
}
