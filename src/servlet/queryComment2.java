package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class queryComment2 extends HttpServlet {

	
	public queryComment2() {
		super();
	}

	
	public void destroy() {
		super.destroy(); 
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("gbk");
		String sql=null;
		
		String dno=null;
		String comment_name=null;
		dno=request.getParameter("dno");

		comment_name=request.getParameter("comment_name");
		
		System.out.println(dno);
		
		if(!dno.equals("")){
			sql="SELECT * FROM driverComment WHERE dno="+dno;			//使用sno字段查询
		}else{
					sql="SELECT * FROM driverComment";					//查询所有记录
				}
			
		

		System.out.println(sql);
		
		if(sql!=null){
			request.getSession().setAttribute("sql", sql);
			request.getSession().setAttribute("flag3", "OK");
			response.sendRedirect("../queryComment2.jsp");
		}else{
			response.sendRedirect("../queryComment2.jsp");
		}
		
		
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
		
	}

	
	public void init() throws ServletException {
		
	}

}
