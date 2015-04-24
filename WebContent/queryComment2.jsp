<%@ page language="java" pageEncoding="gbk"%>

<%@ page import="java.sql.*"%>
<%@ page import="db.*"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>queryComment2.jsp</title>
  

  </head>
  
  <body>
  
   <form name="queryComment2" method="post" action="servlet/queryComment2">	
     	<table width="465" border="o.2" cellpadding="0" cellspacing="0" height="10">
     	<tr>
     	<td>
			Coach number<input type="text" name="dno" value="" size="15">
	 	</td>
	 	<td>
	 		Commenter<input type="text" name="comment_name" value="" size="15">
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
				Coach number
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Commenting time
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Commenter
			</td>
			<td width="14%" class="TABLE_HEAD" align="center">
				Content
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
				<%=rs.getString("dno")%>				
			</td>	

			<td class="TABLE_COL" align="center">
			    <%=rs.getString("comment_time")%>						
			</td>		
			<td class="TABLE_COL" align="center">
				<%=rs.getString("comment_name")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("c_text")%>
			</td>				
			<td class="TABLE_COL" align="center">
				<a href="Error.html?dno=<%=rs.getString("dno") %>">Modify
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
