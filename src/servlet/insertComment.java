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

public class insertComment extends HttpServlet {

	
	public insertComment() {
		super();
	}

	
	public void destroy() {
		super.destroy(); 
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("gbk");
		String sql=null;
		int i;

		String dno=request.getParameter("dno");
		String comment_time=request.getParameter("comment_time");
		String comment_name=request.getParameter("comment_name");
		String c_text=request.getParameter("c_text");

		DB db=new DB();
		db.connectMySQL();
		sql="SELECT * FROM driverInfo WHERE dno="+dno;
		System.out.println(sql);
		try {
			ResultSet rs=db.query(sql);
			if(rs.next()){				
				sql="INSERT INTO driverComment VALUES(NULL,"+dno+",'"+comment_time+"','"+comment_name+"','"+c_text+"')";
				System.out.println(sql);
				i=db.update(sql);
				if(i>0){
					response.sendRedirect("../queryComment.jsp");
				}else{
					response.sendRedirect("../insertComment.jsp");
				}
			}else{
				response.sendRedirect("../insertComment.jsp");
			}
			db.closeDB();
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("../insertComment.jsp");
		}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
	}

	
	public void init() throws ServletException {
		
	}

}
