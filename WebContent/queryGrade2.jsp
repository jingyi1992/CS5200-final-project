<%@ page language="java" pageEncoding="gbk"%>


<%@ page import="db.*"%>
<%@ page import="java.sql.*"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>queryGrade2.jsp</title>
   

  </head>
  
  <body>
 
   <form name="queryGrade2" method="post" action="servlet/queryGrade2">	
     <table width="465" border="o.2" cellpadding="0" cellspacing="0" height="10">
      <tr>	
     	<td>
		 Student number:<input type="text" name="sno" value="" size="15">
	 		  
	 	</td>
	 	<td>
		 Name:<input type="text" name="sname" value="" size="15">	 		  
	 	</td>
	 	<td>
	 	Course name:  <SELECT NAME="cname">
	 		<OPTION VALUE="">	 All
		    <OPTION VALUE="Written test">	 Written test					
		    <OPTION VALUE="Parking test">	 Parking test
		    <OPTION VALUE="Road test">	 Road test  		
	     </SELECT>
	     </td>
	     <td>		
		 <input type="submit" name="Submit" value="Submit">
	 	 <input type="reset" name="reset" value="Reset">
	 	</td>
	 </tr>
	 </table>
	<form>

<%					
	String flag2="NO";
	flag2=(String)request.getSession().getAttribute("flag2");	
	System.out.println(flag2);			
	if (flag2!=null&&flag2.equals("OK")) {			 
%>
	<table width="100%" border="o.5" cellpadding="0" cellspacing="0"
		class="TABLE">
		<tr>
			<td width="10%" class="TABLE_HEAD" align="center">
				Student number
			</td>
			<td width="10%" class="TABLE_HEAD" align="center">
				Name
			</td>
			<td width="10%" class="TABLE_HEAD" align="center">
				Course name
			</td>
			<td width="10%" class="TABLE_HEAD" align="center">
				times of examination
			</td>
			<td width="10%" class="TABLE_HEAD" align="center">
				Last time of examination
			</td>
			<td width="10%" class="TABLE_HEAD" align="center">
				Grade
			</td>
			<td width="10%" class="TABLE_HEAD" align="center">
				Modify
			</td>			
			<td width="10%" class="TABLE_HEAD" align="center">
				Delete
			</td>
		</tr>


		<%
			String sql=(String)request.getSession().getAttribute("sql");
			DB db = new DB();
			db.connectMySQL();
			ResultSet rs=db.query(sql);			
			while(rs.next()){	
						
		 %>
		<tr class="COL_A">
			
			<td class="TABLE_COL" align="center">
				<%=rs.getString("sno")%>				
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("sname")%>				
			</td>			
			<td class="TABLE_COL" align="center">
				<%=rs.getString("cname")%>
			</td>
			<td class="TABLE_COL" align="center">
			    <%=rs.getString("times")%>						
			</td>		
			<td class="TABLE_COL" align="center">
				<%=rs.getString("last_time")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("grade")%>
			</td>				
			<td class="TABLE_COL" align="center">
				<a href="Error.html?id=<%=rs.getString("id") %>">Modify 
				</a>
			</td>		
			<td class="TABLE_COL" align="center">
				<a href="Error.html?id=<%=rs.getString("id") %>">Delete
				</a>
			</td>
		 </tr>
		 
		 
		<%}
		 db.closeDB();
		 request.getSession().setAttribute("flag2","RESET"); 
		 }	
		 	%>
		
		
		
		

</table>
   
   
  
   
  </body>
</html>
