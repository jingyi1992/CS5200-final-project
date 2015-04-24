package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;

public class deleteDriver extends HttpServlet {

	public deleteDriver() {
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
		String dno=null;
		int i=0;
		dno=request.getParameter("dno");
		sql="DELETE FROM driverInfo WHERE dno="+dno;
		DB db = new DB();
		db.connectMySQL();
		try {
			i=db.update(sql);
			if(i>0){
				System.out.println("É¾³ý³É¹¦£¡");
				request.getSession().setAttribute("flag", "OK");
				response.sendRedirect("../queryDriver.jsp");
			}
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
