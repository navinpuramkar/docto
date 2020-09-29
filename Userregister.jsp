<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script language="javascript" type="text/javascript" src="myscript.js"></script>
<script type="text/javascript" language="javascript">
function check()
{
	if(register.txtname.value=="")
	{
		register.txtname.focus()
		alert(" Enter Name");
		return false;
	}
	else if(register.txtemailid.value=="")
	{
		register.txtemailid.focus()
		alert(" Enter Email ID");
		return false;
	}
	else if(register.txtmobilenumber.value=="")
	{
		register.txtmobilenumber.focus()
		alert(" Enter Mobile Number");
		return false;
	}
	else if(register.txtpassword.value=="")
	{
		register.txtpassword.focus()
		alert(" Enter Password");
		return false;
	}
	else if(register.txtconfirmpassword.value=="")
	{
		register.txtconfirmpassword.focus()
		alert(" Enter Confirm Password");
		return false;
	}
	 else if(register.rbdgender.value=="")
	{
		register.rbdgender.focus()
		alert(" Enter Gender");
		return false;
	}
	else if(register.city.value=="")
	{
		register.city.focus()
		alert(" Enter City");
		return false;
	}
}
</script>
<jsp:include page="designs/head.txt"/>
</head>
<body>
<jsp:include page="designs/upperbody.txt"/>

<form name="register" method="post" action="userregistrationcode.jsp" enctype="multipart/form-data">

<h1 align="center">Registration form</h1><br />

<table align="center" border="1">
	<tr>
		<td> First Name</td>
		<td><input type="text"  name="txtname" onkeypress="return isCharacter(event)" /></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="lastname" onkeydown="return isCharacter(event)" /></td>
	</tr>
	<tr>
		<td>Username</td>
		<td><input type="text" name="username"  /></td>
	</tr>
	<tr>
		<td>Upload Photo</td>
		<td><input type="file" name="photo" /></td>
	</tr>
	<tr>
		<td>Email ID</td>
		<td><input type="text" name="txtemailid"  /></td>
	</tr>
	<tr>	
		<td>Mobile Number</td>
		<td><input type="text" name="txtmobilenumber"  maxlength="10" onkeypress="return number(event)" /></td>
	</tr>
	<tr>
		<td>Alternative Number</td>
		<td><input type="text" name="alternativenumber" maxlength="10" onkeypress="return number(event)" /></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="txtpassword" /></td>
	</tr>
	<tr>
		<td>Confirm Password</td>
		<td><input type="password" name="txtconfirmpassword" /></td>
	</tr>
	<tr>
		<td>Gender</td>
		<td><input type="radio" name="rbdgender"  value="Male"/>Male &nbsp;<input type="radio" name="rbdgender"  value="Female"/>Female</td>
	</tr>
	<tr>
		<td>Age</td>
		<td><input type="text" name="age" /></td>
	</tr>
	<tr>
		<td>Blood Group</td>
		<td><input type="text" name="bloodgroup" /></td>
	</tr>
	<tr>
		<td>City</td>
		<td> <select name="city">
			<option> Gulbarga</option>
			<option> Bidar</option>
			<option>Banglore</option>
			</select></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Register"  onclick="return check()" />&nbsp;<input type="reset" value="Cancel" /></td>
	</tr>
</table>
<br />
<br />


	
</form>
<jsp:include page="designs/lowerbody.txt"/>
</body>

</html>
