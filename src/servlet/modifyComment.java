package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;

public class modifyComment extends HttpServlet {

	
	public modifyComment() {
		super();
	}

	
	public void destroy() {
		super.destroy(); 
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gbk");
		String sql=null;
		String dno=request.getParameter("dno");
		String comment_time=request.getParameter("comment_time");
		String comment_name=request.getParameter("comment_name");
		String c_text=request.getParameter("c_text");
	
		sql="UPDATE driverComment SET comment_time='"+comment_time+
			"',comment_name='"+comment_name+"',c_text='"+c_text+"' WHERE dno="+dno;
		
System.out.println(sql);
		
		DB db=new DB();
		db.connectMySQL();
		try {
			int i=db.update(sql);
			if(i>0){
				System.out.println("ÐÞ¸Ä³É¹¦£¡");
				request.getSession().setAttribute("flag3", "OK");
				response.sendRedirect("../queryComment.jsp");
			}
			db.closeDB();
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("../queryComment.jsp");
		}

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
		
	}

	
	public void init() throws ServletException {
		
	}

}
