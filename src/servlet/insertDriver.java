package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;

public class insertDriver extends HttpServlet {

	public insertDriver() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("gbk");
		String sql=null;
		int i;
		String dno=request.getParameter("dno");
		String dname=request.getParameter("dname");
		System.out.println(dname);
		String sex=request.getParameter("sex");
		String age=request.getParameter("age");
		String identify=request.getParameter("identify");
		String tel=request.getParameter("tel");
		String car_type=request.getParameter("carType");
		String enroll_time=request.getParameter("enrollTime"); 
		if(enroll_time.equals(""))
			enroll_time="9999-12-30";
		String s_text=request.getParameter("stext");
		
		DB db = new DB();
		db.connectMySQL();
		if(dno!=null&&!dno.equals("")){
			sql="SELECT * FROM driverInfo WHERE dno="+dno;
			try {
				ResultSet rs=db.query(sql);
				if(rs.next()){
					System.out.println("该记录已经存在！");
					response.sendRedirect("../insertDriver.jsp");
				}
				else{
					sql="INSERT INTO driverInfo VALUES('"+dno+"','"+dname+"','"+sex+
						"',"+age+",'"+identify+"','"+tel+"','"+car_type+"','"+enroll_time+
						"','"+s_text+"')";
					System.out.println(sql);
					i=db.update(sql);
					if(i>0){
						request.getSession().setAttribute("flag", "OK");
						response.sendRedirect("../queryDriver.jsp");
					}else{
						System.out.println("记录插入失败！");
						response.sendRedirect("../insertDriver.jsp");
					}
				}
				db.closeDB();
			} catch (SQLException e) {
				e.printStackTrace();
				response.sendRedirect("../insertDriver.jsp");
			}
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
		
	}

	public void init() throws ServletException {
		
	}

}
