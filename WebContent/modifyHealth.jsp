<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="db.*"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>modifyHealth.jsp</title>


  </head>
  
  <body>
  
    <center>
		<h3>	 Modify physical information				
		 <form name="modifyHealth" method="post" action="servlet/modifyHealth">
			<table width="465" border="o.2" cellpadding="0" cellspacing="0" height="333">
				
				<%
				String sno=request.getParameter("sno");
				String sql1="SELECT * FROM healthInfo WHERE sno="+sno;
				DB db1 = new DB();
				db1.connectMySQL();
				ResultSet rs1=db1.query(sql1);
				if(rs1.next()){ 
			    %>
				
					<tr class="COL_A">
						  
						<td width="14%" class="TABLE_HEAD" align="center">
							Sno
						</td>
						
						<td class="TABLE_COL" align="left">
							<input type="text" name="sno" value="<%=rs1.getString("sno") %>" readonly="true">  
						
						</td>
					</tr>					
					<tr class="COL_A">
						<td width="15%" class="TABLE_HEAD" align="center">
							Name
						</td>
						<td class="TABLE_COL" align="left">
							<input type="text" name="sname" value="<%=rs1.getString("sname")%>"readonly="true"> 
												
						</td>
					</tr>
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							Hei
						</td>
						<td class="TABLE_COL" align="left">
							<input type="text" name="height" value="<%=rs1.getString("height")%>">
											
						</td>
					</tr>
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							Wei
						</td>
						<td class="TABLE_COL" align="left">
							<input type="text" name="weight" value="<%=rs1.getString("weight")%>">
											
						</td>
					</tr>
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							Color
						</td>
						<td class="TABLE_COL" align="left">
							<SELECT NAME="differentiate" value="<%=rs1.getString("differentiate")%>">
								 <OPTION VALUE="<%=rs1.getString("differentiate")%>">  <%= rs1.getString("differentiate")%>
		   						 <OPTION VALUE="Normal">	 Normal					
		 					     <OPTION VALUE="Blindness">	 Blindness	
		  						 <OPTION VALUE="Weak">	 Weak		
	    					 </SELECT>		<br>	
			
												
						</td>
					</tr>					
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							L eye
						</td>
						<td class="TABLE_COL" align="left">
							<input type="text" name="left_sight" value="<%=rs1.getString("left_sight")%>">
											
						</td>
					</tr>
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							R eye
						</td>
						<td class="TABLE_COL" align="left">
							<input type="text" name="right_sight" value="<%=rs1.getString("right_sight")%>">
												
						</td>
					</tr>
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							L hearing
						</td>
						<td class="TABLE_COL" align="left">
							<SELECT NAME="left_ear" value="<%=rs1.getString("left_ear")%>">
									<OPTION VALUE="<%=rs1.getString("left_ear")%>">  <%= rs1.getString("left_ear")%>
		   							<OPTION VALUE="Normal">	Normal			
									<OPTION VALUE="Weak">	Weak										  		
	    					 </SELECT>		<br>	
											
						</td>
					</tr>	
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							R hearing
						</td>
						<td class="TABLE_COL" align="left">
							<SELECT NAME="right_ear" value="<%=rs1.getString("right_ear")%>">
									<OPTION VALUE="<%=rs1.getString("right_ear")%>">  <%= rs1.getString("right_ear")%>
		   							<OPTION VALUE="Normal">	Normal			
									<OPTION VALUE="Weak">	Weak										  		
	    					 </SELECT>		<br>	
										
						</td>
					</tr>	
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							Leg
						</td>
						<td class="TABLE_COL" align="left">
							<SELECT NAME="legs" value="<%=rs1.getString("right_ear")%>">
									<OPTION VALUE="<%=rs1.getString("right_ear")%>">  <%= rs1.getString("right_ear")%>
		   							<OPTION VALUE="Normal">	Normal			
									<OPTION VALUE="Different">	Different										  		
	    					 </SELECT>		<br>	
										
						</td>
					</tr>	
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							Blood pressure
						</td>
						<td class="TABLE_COL" align="left">
							
							<SELECT NAME="pressure" value="<%=rs1.getString("pressure")%>">
									<OPTION VALUE="<%=rs1.getString("pressure")%>">  <%= rs1.getString("pressure")%>
		   							<OPTION VALUE="Normal">	Normal				
									<OPTION VALUE="High">	High								
									<OPTION VALUE="Low">	Low	  		
	    					 </SELECT>		<br>															
												
						</td>
					</tr>	
					<tr class="COL_A">
						<td width="20%" class="TABLE_HEAD" align="center">
							History
						</td>
						<td class="TABLE_COL" align="left">
							<input type="text" name="history" value="<%=rs1.getString("history")%>">
											
						</td>
					</tr>
					
					<tr class="COL_A">
						<td width="35%" class="TABLE_HEAD" align="center" >
							Remark
						</td>
						<td class="TABLE_COL" align="left">
							<input type="text"  name="h_text" value="<%=rs1.getString("h_text") %>">
						
						</td>
					</tr>
									
					<tr class="COL_A">
						<td width="15%" class="TABLE_HEAD" align="center">												
						</td>
						<td class="TABLE_COL" align="left">
							<input type="submit" name="Submit" value="Submit">
							<input type="reset" name="reste" value="Reset">	
						</td>
					</tr>						
				
				<%
					db1.closeDB();
					}
				 %>
				
			</table>
		</form>		
				
           
  </body>
</html>
