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

public class queryDriver2 extends HttpServlet {

	public queryDriver2() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
//		rs.getString("sex").getBytes("ISO-8859-1"),"GBK")	
		
		request.setCharacterEncoding("gbk");
		String sql=null;
		
		String dno=null;
		String dname=null;
		String carType=null;
		String scondition=null;
		
		dno=request.getParameter("dno");
		dname=request.getParameter("dname");
		carType=request.getParameter("carType");
		scondition=request.getParameter("scondition");
		
		if(!dno.equals("")){			//只按学号查询
			sql="SELECT * FROM driverInfo WHERE dno="+dno;
		}else{							//不按学号					
			if(!dname.equals("")){		
				if(carType.equals("all")){
					if(scondition.equals("all")){
						sql="SELECT * FROM driverInfo WHERE dname LIKE '%"+dname+"%'";
					}else{
						sql="SELECT * FROM driverInfo WHERE dname LIKE '%"+dname+"%' AND scondition='"+scondition+"'";
					}
				}else{
					if(scondition.equals("all")){
						sql="SELECT * FROM driverInfo WHERE dname LIKE '%"+dname+"%' AND car_type='"+carType+"'";
					}else{
						sql="SELECT * FROM driverInfo WHERE dname LIKE '%"+dname+"%' AND scondition='"+scondition+"' AND car_type='"+carType+"'";
					}
				}
			}else{
				if(carType.equals("all")){
					if(scondition.equals("all")){
						sql="SELECT * FROM driverInfo";
					}else{
						sql="SELECT * FROM driverInfo WHERE scondition='"+scondition+"'";
					}
				}else{
					if(scondition.equals("all")){
						sql="SELECT * FROM driverInfo WHERE car_type='"+carType+"'";
					}else{
						sql="SELECT * FROM driverInfo WHERE scondition='"+scondition+"' AND car_type='"+carType+"'";
					}
				}
			}
		}

		if(sql!=null){
			request.getSession().setAttribute("sql", sql);
			request.getSession().setAttribute("flag", "OK");
			response.sendRedirect("../queryDriver2.jsp");
		}else{
			response.sendRedirect("../queryDriver2.jsp");
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
		
	}

	public void init() throws ServletException {
		
	}

}
