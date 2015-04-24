<%@ page language="java" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 菜单页，系统的所有功能菜单 -->
<html>
<head>
<title>首页</title>
<style type="text/css">
td {
	font-size: 12px;
}
</style>
<script language="javascript" src="javascripts/common.js"></script>
<link href="styles/common.css" type="text/css" rel="stylesheet" />
<link href="styles/menu.css" type="text/css" rel="stylesheet" />
</head>
<body bgcolor="#FFFFFF" leftmargin="0"
	background="images/menu_left_back.gif" topmargin="0" marginwidth="0"
	marginheight="0" scroll="no">


	<table width="199" height="169" border="0" align="left" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="38"></td>
		</tr>
		<tr>
			<td align="center" valign="top"><script language="javascript"
					id="clientEventHandlersJS">
			<!--
				var number = 5;

				function LMYC() {
					var lbmc;
					//var treePic;
					for (i = 1; i <= number; i++) {
						lbmc = eval('LM' + i);
						//treePic = eval('treePic'+i);
						//treePic.src = 'images/file.gif';
						lbmc.style.display = 'none';
					}
				}

				function ShowFLT(i) {
					lbmc = eval('LM' + i);
					//treePic = eval('treePic' + i)
					if (lbmc.style.display == 'none') {
						LMYC();
						//treePic.src = 'images/nofile.gif';
						lbmc.style.display = '';
					} else {
						//treePic.src = 'images/file.gif';
						lbmc.style.display = 'none';
					}
				}
			//-->
			</script>
		<tr>
			<td style="PADDING-LEFT: 20px" background height="23"><img
				height="9" src="imagesjs/bit05.gif" width="8" align="absMiddle">
				<a onclick="javascript:ShowFLT(7)" href="javascript:void(null)">
					User information</a></td>
		</tr>
		<tr id="LM7" style="DISPLAY: none">
			<td>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="添加用户" href="insertUser.jsp" target="WORK"> Insert user</a></td>
					</tr>
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img	height="7" 
						    src="imagesjs/bit05.gif" width="8" align="absMiddle">
							<a title="修改密码" href="modifyPasswd.jsp" target="WORK"> modify
								password</a></td>
					</tr>

				</table>
			</td>
		</tr>


		<tr id="LM1" style="DISPLAY: none">
		</tr>

		<tr>
			<td style="PADDING-LEFT: 20px" background height="23"><img
				height="9" src="imagesjs/bit05.gif" width="8" align="absMiddle">
				<a onclick="javascript:ShowFLT(2)" href="javascript:void(null)">
					Student information</a></td>
		</tr>
		<tr id="LM2" style="DISPLAY: none">
			<td>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="添加学员" href="insertStudent.jsp" target="WORK"> Insert
								student</a></td>
					</tr>
					<tr>
						<td background height="3"></td>
					</tr>

					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="查询/修改/删除" href="queryStudent.jsp" target="WORK">
								Search/modify/delete</a></td>
					</tr>



				</table>
			</td>
		</tr>

		<tr>
			<td style="PADDING-LEFT: 20px" background height="23"><img
				height="9" src="imagesjs/bit05.gif" width="8" align="absMiddle">
				<a onclick="javascript:ShowFLT(6)" href="javascript:void(null)">
					Coach information</a></td>
		</tr>
		<tr id="LM6" style="DISPLAY: none">
			<td>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="添加教练" href="insertDriver.jsp" target="WORK"> Insert
								coach</a></td>
					</tr>
					<tr>
						<td background height="3"></td>
					</tr>

					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="查询/修改/删除" href="queryDriver.jsp" target="WORK">
								Search/modify/delete</a></td>
					</tr>



				</table>
			</td>
		</tr>

		<tr>
			<td style="PADDING-LEFT: 20px" background height="23"><img
				height="9" src="imagesjs/bit05.gif" width="8" align="absMiddle">
				<a onclick="javascript:ShowFLT(3)" href="javascript:void(null)">
					Physical information</a></td>
		</tr>
		<tr id="LM3" style="DISPLAY: none">
			<td>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="添加体检信息" href="insertHealth.jsp" target="WORK"> Insert
								physical examination</a></td>
					</tr>
					<tr>
						<td background height="3"></td>
					</tr>
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="查询/修改/删除" href="queryHealth.jsp" target="WORK">
								Search/modify/delete</a></td>
					</tr>

				</table>
			</td>
		</tr>

		<tr>
			<td style="PADDING-LEFT: 20px" background height="23"><img
				height="9" src="imagesjs/bit05.gif" width="8" align="absMiddle">
				<a onclick="javascript:ShowFLT(5)" href="javascript:void(null)">
					Grade information</a></td>
		</tr>
		<tr id="LM5" style="DISPLAY: none">
			<td>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="增加成绩信息" href="insertGrade.jsp" target="WORK"> Insert
								grade</a></td>
					</tr>
					<tr>
						<td background height="3"></td>
					</tr>
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="查询/修改/删除" href="queryGrade.jsp" target="WORK">
								Search/modify/delete</a></td>
					</tr>

					<tr>
						<td background height="3"></td>
					</tr>
				</table>
			</td>
		</tr>




		<tr>
			<td style="PADDING-LEFT: 20px" background height="23"><img
				height="9" src="imagesjs/bit05.gif" width="8" align="absMiddle">
				<a onclick="javascript:ShowFLT(4)" href="javascript:void(null)">
					License information</a></td>
		</tr>
		<tr id="LM4" style="DISPLAY: none">
			<td>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="添加驾驶证领取信息" href="insertLicense.jsp" target="WORK">
								Insert license receiving information</a></td>
					</tr>
					<tr>
						<td background height="3"></td>
					</tr>
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="查询/修改/删除" href="queryLicense.jsp" target="WORK">
								Search/modify/delete</a></td>
					</tr>
					<tr>
						<td background height="3"></td>
					</tr>

				</table>
			</td>
		</tr>
<tr>
			<td style="PADDING-LEFT: 20px" background height="23"><img
				height="9" src="imagesjs/bit05.gif" width="8" align="absMiddle">
				<a onclick="javascript:ShowFLT(8)" href="javascript:void(null)">
					Coach comment</a></td>
		</tr>
		<tr id="LM8" style="DISPLAY: none">
			<td>
				<table cellspacing="0" cellpadding="0" width="100%" border="0">
					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="添加教练" href="insertComment.jsp" target="WORK"> Insert
								coach comment</a></td>
					</tr>
					<tr>
						<td background height="3"></td>
					</tr>

					<tr>
						<td style="PADDING-LEFT: 40px" height="23"><img height="7"
							src="imagesjs/bit06.gif" width="8" align="absMiddle"> <a
							title="查询/修改/删除" href="queryComment.jsp" target="WORK">
								Search/modify/delete</a></td>
					</tr>



				</table>
			</td>
		</tr>



		<!-- 		<tr>
			<td style="PADDING-LEFT: 20px" height="23"><img height="7"
				src="imagesjs/bit06.gif" width="8" align="absMiddle"> 
			   <a title="退出" href="login.jsp" target="WORK">重新登录</a>
			    <button onclick="java:window.close()">退出</button>
			</td>
		</tr>    -->














	</TABLE>

</body>
</html>


