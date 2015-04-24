<%@ page language="java" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>注册页面</TITLE>
<LINK HREF="css.css" REL="stylesheet" TYPE="text/css">
<STYLE TYPE="text/css">
<!--
.STYLE3 {
	font-size: x-large;
	font-family: "宋体";
	color: #000000;
	font-weight: bold;
}
-->
</STYLE>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0
	MARGINHEIGHT=0>
	<P></P>
	<P>&nbsp;</P>
	<P>&nbsp;</P>
	<TABLE WIDTH="800" BORDER="0" CELLSPACING="0" CELLPADDING="0"
		ALIGN="CENTER">
		<TR>
			<TD HEIGHT="46" ALIGN="CENTER" VALIGN="MIDDLE"><SPAN
				CLASS="STYLE3">Registration</SPAN></TD>
		</TR>
	</TABLE>
	<form name="register" method="post" action="servlet/register">
		<TABLE WIDTH=619 BORDER=0 ALIGN="center" CELLPADDING=0 CELLSPACING=0>
		
			<TR>
				<TD HEIGHT="142" ALIGN="CENTER" VALIGN="MIDDLE"><TABLE
						WIDTH="49%">

						<tr>
							<td class="g12" width="50%" height=40 align="right"><font
								size=2>Username</font></td>
							<td height="30">&nbsp;<input name="username"
								type="text" size="15">
							</td>

						</tr>
						<tr>
							<td class="g12" width="50%" height=40 align="right"><font
								size=2>Password</font></td>
							<td height="30" align="left">&nbsp;<input
								name="password" type="password" size="15">
							</td>
						</tr>
						
						
	<!-- 					<tr>
							<td class="g12" width="50%" height=40 align="right"><font
								size=2>身份(admin or guest)</font></td>
							<td height="30" align="left">&nbsp;<input
								name="auth" type="text" size="15">
							</td>
						</tr>    -->

						<tr>
							<td width="50%" class="g12" height=40 align="right"><font
								size=2>Authentication&nbsp;</font></td>
							<td width="50%" class="g12" height=40 align="left"><SELECT
								NAME="auth">
									<OPTION VALUE="coach">Coach
									<OPTION VALUE="student">Student
							</SELECT></td>
						</tr>
						<P>
						<tr CLASS="COL_A">
							<td WIDTH="8%" CLASS="TABLE_HEAD" ALIGN="center"></td>
							<td WIDTH="15%" ALIGN="LEFT" VALIGN="MIDDLE" CLASS="TABLE_COL">
								<INPUT TYPE="submit" NAME="Submit" VALUE="Submit"> <INPUT
								TYPE="reset" NAME="reste" VALUE="Reset">
							</td>
						</tr>


						</TD>
						</TR>
					</TABLE>


					</form> <!-- End ImageReady Slices -->
</BODY>
</HTML>
