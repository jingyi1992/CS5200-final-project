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

public class userLogin extends HttpServlet {

	public userLogin() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GBK");
		
		request.setCharacterEncoding("gbk");
		String sql=null;
		String username=null;
		String password=null;
		String auth=null;
		username=request.getParameter("username");	
		password=request.getParameter("password");
		auth=request.getParameter("auth");
		
		
		if(username!=null &&!username.equals("")&&password!=null&&!password.equals("")){
			sql="SELECT * FROM user WHERE username='"+username+"' AND password='"+password+"'  AND auth='"+auth+"'";
			DB db = new DB();
			db.connectMySQL();
			try{
				ResultSet rs=db.query(sql);
				if(rs.next()){
					request.getSession().setAttribute("username", username);
					if (auth.equals("admin"))				
	//				request.setAttribute("username", username);
					{response.sendRedirect("../LoginOK.html");
					}
					if (auth.equals("student"))
					{
						response.sendRedirect("../LoginOK2.html");
					}
					if (auth.equals("coach"))
					{
						response.sendRedirect("../LoginOK3.html");
					}	
				}

				else{
					response.sendRedirect("../LoginError.html");
				}
			db.closeDB();	
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		else{
			response.sendRedirect("../LoginError.html");
		}
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
		
	}

	
	public void init() throws ServletException {
		
	}

}
