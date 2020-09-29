<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Doctor Add Appointment Details</title>
<jsp:include page="designs/head.txt"/>
</head>

<body>
<jsp:include page="designs/doctorupperbody.txt"/>
<%!
	String pname="";
%>
<%
	if(request.getParameter("id")!=null)
	{
		pname=request.getParameter("id");
	}
	else
	{
		pname="";
	}
%>
<form name="doctorappointmentdetails" method="post" action="doctoraddappointmentdetailscode.jsp">
<table align="center" border="2">
	<tr>
		<td><input type="hidden" name="pname" value="<%=pname%>" />	</td>
	<tr>
		<td>Date</td>
		<td><input type="Date" name="date" /></td>
	</tr>
	<tr>
		<td>Time</td>
		<td><input type="text" name="Time" /></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input  type="submit" value="Submit" />&nbsp;<input type="reset"  value="Cancel" /></td>
	</tr>
	</table>
	
	
	
	
	<br />
<br />
<br />
<br />

	</form>
	<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
