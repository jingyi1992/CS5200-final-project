<%@ page language="java" pageEncoding="gbk"%>

<%@ page import="java.sql.*"%>
<%@ page import="db.*"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>queryLicence2.jsp</title>
  

  </head>
  
  <body>
  
   <form name="queryLicense2" method="post" action="servlet/queryLicense2">	
     	<table width="465" border="o.2" cellpadding="0" cellspacing="0" height="10">
     	<tr>
     	<td>
			Student number<input type="text" name="sno" value="" size="15">
	 	</td>
	 	<td>
	 		Name<input type="text" name="sname" value="" size="15">	
	 	</td>
	 	<td>
	 		Driver license number<input type="text" name="lno" value="" size="15">
	 	</td>
	 	<td>
	 		Receiver<input type="text" name="receive_name" value="" size="15">
	 	</td>
	 	 <td>
		 <input type="submit" name="Submit" value="Submit">
	 	 <input type="reset" name="reset" value="Reset" >
	 	 </td>
	 	 </tr>
	 	 </table>
	 </form>
	 
<%					
	String flag3="NO";
	flag3=(String)request.getSession().getAttribute("flag3");	
	System.out.println(flag3);			
	if (flag3!=null&&flag3.equals("OK")) {			 
%>
	<table width="100%" border="o.5" cellpadding="0" cellspacing="0"
		class="TABLE">
		<tr>
			<td width="14%" class="TABLE_HEAD" align="center">
				Student number
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Name
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Driver license number
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Receiving time
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Receiver
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Remark
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				Modify
			</td>			
			<td width="6%" class="TABLE_HEAD" align="center">
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
				<%=rs.getString("sname") %>
			</td>		
			<td class="TABLE_COL" align="center">
				<%=rs.getString("lno")%>
			</td>
			<td class="TABLE_COL" align="center">
			    <%=rs.getString("receive_time")%>						
			</td>		
			<td class="TABLE_COL" align="center">
				<%=rs.getString("receive_name")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("l_text")%>
			</td>				
			<td class="TABLE_COL" align="center">
				<a href="Error.html?sno=<%=rs.getString("sno") %>">Modify
				</a>
			</td>		
			<td class="TABLE_COL" align="center">
				<a href="Error.html?id=<%=rs.getString("id") %>">Delete
				</a>
			</td>
		 </tr>
		<%}
		 db.closeDB();
		 request.getSession().setAttribute("flag3","RESET"); 
		 }	
		 	%>
		
		
</table>
   
  
  </body>
</html>
