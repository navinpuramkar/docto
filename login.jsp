<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Login Form</title>


<script language="javascript" type="text/javascript" src="myscript.js"></script>
<script language="javascript" type="text/javascript">
function check()
{
	if(form1.txtusername.value=="")
	{
	alert("Enter User Name");
	form1.txtusername.focus();
	return false;
	}
	else if(form1.txtpassword.value=="")
	{
	alert("Enter password");
	form1.txtpassword.focus();
	return false;
	}
	
}
</script>
<jsp:include page="designs/head.txt"/>
</head>
<body>
<jsp:include page="designs/upperbody.txt"/>
<form name="form1" method="post"   action="login1.jsp">
<h1 align="center">Login Page</h1> <br>

<table align="center" border="1">
		<tr>
			<td>User Type</td>
			<td><select name="usertype">
				<option value="1">ADMIN</option>
				<option value="2">DOCTOR</option>
				<option value="3">USER</option>
				</select>
		<tr>
			<td>
				Username<font color="red">*</font>
			</td>
			<td>
				<input type="text" name="txtusername" />
			</td>
		</tr>
		<tr>
			<td>
				Password<font color="red">*</font>
			</td>
			<td>
				<input type="password" name="txtpassword" />
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="btnsubmit" value="Login" onClick="return check()"/>
				<input type="reset" value="Cancel" name="btncancel" />
			</td> 
		</tr>
</table>
	
</form>
<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
