<%@ page language="java" pageEncoding="gbk"%>
<%@ page import="java.sql.*"%>
<%@ page import="db.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<link href="styles/common.css" type="text/css" rel="stylesheet" />
<link href="styles/menu.css" type="text/css" rel="stylesheet" />
<link href="styles/function.css" type="text/css" rel="stylesheet" />
<link href="styles/index.css" type="text/css" rel="stylesheet" />
<link href="styles/link.css" type="text/css" rel="stylesheet" />
<link href="styles/main.css" type="text/css" rel="stylesheet" />

<title>queryDriver.jsp</title>


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<form name="queryDriver" method="post" action="servlet/queryDriver">
		<table width="100%" border=1 " cellpadding="0" cellspacing="0">
			<tr>
				<td width="4%" class="TABLE_HEAD" align="center">
					<OPTION VALUE=100001>Searching by coach number:<input type="text" name="dno"
							value="" size="10" />
				</td>
				<td width="4%" class="TABLE_HEAD" align="center">
					<OPTION VALUE=100004>Searching by name:<input type="text" name="dname"
							value="" size="10" />
				</td>
				<td width="4%" class="TABLE_HEAD" align="center">
					<OPTION VALUE=100005>Searching by car type£º <SELECT NAME="carType">
							<OPTION VALUE="all">All
							<OPTION VALUE="A1">A1
							<OPTION VALUE="A2">A2
							<OPTION VALUE="A3">A3
							<OPTION VALUE="B1">B1
							<OPTION VALUE="B2">B2
							<OPTION VALUE="C1">C1
							<OPTION VALUE="C2">C2
							<OPTION VALUE="C3">C3
							<OPTION VALUE="C4">C4
						</SELECT>
				</td>
			</tr>
			<tr>
				<input type="submit" name="Submit" value="Submit">
				<input type="reset" name="reset" value="Reset">
			</tr>
		</table>
	</form>

	<%		 
	String flag="NO";
	flag=(String)request.getSession().getAttribute("flag");	
	System.out.println(flag);			
	if (flag!=null&&flag.equals("OK")) {	
	System.out.println("ffffffffff");	 
%>

	<table width="100%" border=1 " cellpadding="0" cellspacing="0"
		class="TABLE">
		<tr>
			<td width="6%" class="TABLE_HEAD" align="center">Coach number</td>
			<td width="6%" class="TABLE_HEAD" align="center">Name</td>
			<td width="6%" class="TABLE_HEAD" align="center">Sex</td>
			<td width="6%" class="TABLE_HEAD" align="center">Age</td>
			<td width="6%" class="TABLE_HEAD" align="center">Identification</td>
			<td width="6%" class="TABLE_HEAD" align="center">Telephone</td>
			<td width="6%" class="TABLE_HEAD" align="center">Car type</td>
			<td width="6%" class="TABLE_HEAD" align="center">Time start teaching
			<td width="6%" class="TABLE_HEAD" align="center">Remark</td>
			<td width="4%" class="TABLE_HEAD" align="center">Modify</td>
			<td width="4%" class="TABLE_HEAD" align="center">Delete</td>
		</tr>


		<%
		//	ResultSet rs = (ResultSet)request.getSession().getAttribute("rs"); 
			String sql=(String)request.getSession().getAttribute("sql");
			DB db = new DB();
			db.connectMySQL();
			ResultSet rs=db.query(sql);			
	       while(rs.next())	{								
			 %>
		<tr class="COL_A">

			<td class="TABLE_COL" align="center"><%=rs.getString("dno") %></td>
			<td class="TABLE_COL" align="center"><%=rs.getString("dname")%>
			</td>
			<td class="TABLE_COL" align="center"><%=rs.getString("sex")%></td>
			<td class="TABLE_COL" align="center"><%=rs.getString("age")%></td>
			<td class="TABLE_COL" align="center"><%=rs.getString("identify")%>
			</td>
			<td class="TABLE_COL" align="center"><%=rs.getString("tel")%></td>
			<td class="TABLE_COL" align="center"><%=rs.getString("car_type")%>
			</td>
			<td class="TABLE_COL" align="center"><%=rs.getString("enroll_time")%>
			</td>
			<td class="TABLE_COL" align="center"><%=rs.getString("s_text")%>
			</td>
			<td class="TABLE_COL" align="center"><a
				href="Error.html?dno=<%=rs.getString("dno") %>">Modify </a></td>
			<td class="TABLE_COL" align="center"><a
				href="Error.html?dno=<%=rs.getString("dno") %>">Delete </a></td>
		</tr>

	<%	 }
		 db.closeDB();
		 request.getSession().setAttribute("flag","RESET"); 
		 }	
	%>

	</table>



</body>
</html>
