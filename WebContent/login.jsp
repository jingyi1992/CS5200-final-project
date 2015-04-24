<%@ page language="java" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>µÇÂ¼Ò³Ãæ</TITLE>
<LINK HREF="css.css" REL="stylesheet" TYPE="text/css">
<STYLE TYPE="text/css">
<!--
.STYLE3 {
	font-size: x-large;
	font-family: "ËÎÌå";
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
	<TABLE WIDTH="900" BORDER="0" CELLSPACING="0" CELLPADDING="0"
		ALIGN="CENTER">
		<TR>
			<TD HEIGHT="46" ALIGN="CENTER" VALIGN="MIDDLE"><SPAN
				CLASS="STYLE3">Driving school system</SPAN>
				<button onclick="{location.href='register.jsp'}">Register</button></TD>
		</TR>




	</TABLE>

	<form name="login" method="post" action="servlet/userLogin">
		<TABLE WIDTH=619 BORDER=0 ALIGN="center" CELLPADDING=0 CELLSPACING=0>

			<TR>
				<TD HEIGHT="142" ALIGN="CENTER" VALIGN="MIDDLE"><TABLE
						WIDTH="49%">

						<tr>
							<td class="g12" width="50%" height=40 align="right"><font
								size=2>Username</font></td>
							<td height="30">&nbsp;<input name="username" type="text"
								size="15">
							</td>

						</tr>
						<tr>
							<td class="g12" width="50%" height=40 align="right"><font
								size=2>Password</font></td>
							<td height="30" align="left">&nbsp;<input name="password"
								type="password" size="15">
							</td>
						</tr>

						<tr>
							<td width="50%" class="g12" height=40 align="right"><font
								size=2>Authentication&nbsp;</font></td>
							<td width="50%" class="g12" height=40 align="left"><SELECT
								NAME="auth">
									<OPTION VALUE="admin">admin
									<OPTION VALUE="coach">coach
									<OPTION VALUE="student">student
							</SELECT></td>
						</tr>


						<P>
						<tr CLASS="COL_A">
							<td WIDTH="8%" CLASS="TABLE_HEAD" ALIGN="center"></td>
							<td WIDTH="15%" ALIGN="LEFT" VALIGN="MIDDLE" CLASS="TABLE_COL">
								<!--  				<button onclick="{href='register.jsp'}">×¢²á</button>   -->
								<INPUT TYPE="submit" NAME="Submit" VALUE="Login"> <INPUT
								TYPE="reset" NAME="reste" VALUE="Reset">

							</td>
						</tr>


						</TD>
						</TR>



					</TABLE>


					</form> <!-- End ImageReady Slices -->
</BODY>
</HTML>
