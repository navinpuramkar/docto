<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script language="javascript" type="text/javascript" src="myscript.js"></script>
<script type="text/javascript" language="javascript">
function check()
{
	if(forgot.txtemailid.value=="")
	{
		alert("Enter Email ID");
		forgot.txtemailid.focus();
		return false;
	}
}
</script>
</head>

<body>
<form name="forgot" method="post">
<table align="center">
<tr>
	<td>Email ID</td>
	<td><input type="text" name="txtemailid" /></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="Submit" onclick="return Check()" /><input type="reset" value="Reset" /></td>
</tr>
</table>
</form>
</body>
</html>
