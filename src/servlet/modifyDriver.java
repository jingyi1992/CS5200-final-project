package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;

public class modifyDriver extends HttpServlet {

	public modifyDriver() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("gbk");
		String sql=null;
		String dno=request.getParameter("dno");
		String dname=request.getParameter("dname");
		String sex=request.getParameter("sex");
		String age=request.getParameter("age");
		String identify=request.getParameter("identify");
		String tel=request.getParameter("tel");
		String car_type=request.getParameter("carType");
		String enroll_time=request.getParameter("enrollTime"); 
		if(enroll_time.equals(""))
			enroll_time="9999-12-30";
		String s_text=request.getParameter("stext");
		
		sql="UPDATE driverInfo SET dname='"+dname+"',sex='"+sex+"',age="+age+",identify='"+identify+
			"',tel='"+tel+"',car_type='"+car_type+"',enroll_time='"+enroll_time+"',s_text='"+s_text+"' WHERE dno="+dno;

		System.out.println(sql);
		
		DB db=new DB();
		db.connectMySQL();
		try {
			int i=db.update(sql);
			if(i>0){
				System.out.println("ÐÞ¸Ä³É¹¦£¡");
				request.getSession().setAttribute("flag", "OK");
				response.sendRedirect("../queryDriver.jsp");
			}
			db.closeDB();
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("../queryDriver.jsp");
		}
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
		
	}

	public void init() throws ServletException {
		
	}

}
