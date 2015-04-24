<%@ page language="java" pageEncoding="gbk"%>

<%@ page import="db.*"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>queryHealth.jsp</title>

		
  </head>
  
  <body>
   <form name="queryHealth" method="post" action="servlet/queryHealth">	
   	<table width="100%" border=1" cellpadding="0" cellspacing="0">
     	<tr>
     	<td width="4%" class="TABLE_HEAD" align="center">
     	<OPTION VALUE=100001>
		 Searching by student number<input type="text" name="sno" value="" size="15" />
	 	</OPTION>
	 	</td>
	 	<td width="4%" class="TABLE_HEAD" align="center">
	 	<OPTION VALUE=100002>
		 Searching by name<input type="text" name="sname" value="" size="15" />
	 	</OPTION>	
	 	</td>
	 	<td width="4%" class="TABLE_HEAD" align="center">   
		 <input type="submit" name="Submit" value="Submit">
	 	 <input type="reset" name="reset" value="Reset">	 	 
	 	</td> 
	 	</tr>
	 	</table>
	 </form>
	 
<%					
	String flag1="NO";
	flag1=(String)request.getSession().getAttribute("flag1");	
	System.out.println(flag1);			
	if (flag1!=null&&flag1.equals("OK")) {			 
%>
	<table width="100%" border="1" cellpadding="0" cellspacing="0"
		class="TABLE">
		<tr>
			<td width="6%" class="TABLE_HEAD" align="center">
				Sno
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				Name
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				Hei(cm)
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				Wei(kg)
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				Color
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				L eye
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				R eye
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				L hearing
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				R hearing
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				Blood pressure
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				Leg
			</td>
			<td width="6%" class="TABLE_HEAD" align="center">
				History
			</td>
			<td width="10%" class="TABLE_HEAD" align="center">
				Remark
			</td>
			<td width="4%" class="TABLE_HEAD" align="center">
				Modify
			</td>		
			<td width="4%" class="TABLE_HEAD" align="center">
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
				<%=rs.getString("height")%>
			</td>
			<td class="TABLE_COL" align="center">
			    <%=rs.getString("weight")%>						
			</td>		
			<td class="TABLE_COL" align="center">
				<%=rs.getString("differentiate")%>
			</td>	
			<td class="TABLE_COL" align="center">
				<%=rs.getString("left_sight")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("right_sight")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("left_ear")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("right_ear")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("legs")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("pressure")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("history")%>
			</td>
			<td class="TABLE_COL" align="center">
				<%=rs.getString("h_text")%>
			</td>
			<td class="TABLE_COL" align="center">
				<a href="modifyHealth.jsp?sno=<%=rs.getString("sno") %>">Modify
				</a>
			</td>		
			<td class="TABLE_COL" align="center">
				<a href="servlet/deleteHealth?sno=<%=rs.getString("sno") %>">Delete
				</a>
			</td>
		 </tr>
		<%}
		 db.closeDB();
		 request.getSession().setAttribute("flag1","RESET"); 
		 }	
		 	%>
			
		

</table>
   
   
  </body>
</html>
