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
<table align="center">
<tr>
	<td><a href="dentist.jsp"><img src="images/dental-icon.jpg" height="100" width="100"></a></td>
	<td><a href="gynocologist.jsp"><img src="images/download (1).png" height="100" width="100"></a></td>
	<td><a href="eye.jsp"><img src="images/30705902-optometry-flat-icon-with-long-shadow.jpg" height="100" width="100"></a></td>
	<td><a href="heart.jsp"><img src="images/cardiology.png" height="100" width="100"></a></td>
	<td><a href="gastro.jsp"><img src="images/gastroenterologist.png" height="100" width="100"></a></td>
	<td><a href="dermatologist.jsp"><img src="images/dermat.png" height="100" width="100"></a></td>
</tr>
<tr>
	<td><a href="ent.jsp"><img src="images/download.png" height="100" width="100"></a></td>
	<td><a href="nerve.jsp"><img src="images/neurologist.jpg" height="100" width="100"></a></td>
	<td><a href="kidney.jsp"><img src="images/images (1).jpg" height="100" width="100"></a></td>
	<td><a href="phsyc.jsp"><img src="images/images (2).jpg" height="100" width="100"></a></td>
	<td><a href="homopathy.jsp"><img src="images/homeopthy.jpg " height="100" width="100"></a></td>
	<td><a href="ayurvedic.jsp"><img src="images/download (1).jpg" height="100" width="100"></a></td>
</table><br>
<br>
<br>

<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
