<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registered Users</title>
		
		<jsp:include page="designs/head.txt"></jsp:include>
	</head>
	<body>
	<jsp:include page="designs/doctorupperbody.txt"></jsp:include>
	<form  name="displayform" method="post">
	<h1 align="center"> Reports</h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	
if(request.getParameter("value")!=null)
		{
			st.executeUpdate("delete from tbluploadreports where rid="+(request.getParameter("value"))+"");		
			
			%>
			<script language="javascript" type="text/javascript">
			alert("Record Deleted");
			</script>
			<%
		}
try
{
	rs=st.executeQuery("select * from tbluploadreports;");
	%>
	<table border="2" align="center" width="70%" style="font-size:18px">
	<tr>
		<td>Patient Name</td>
		<td>Report</td>
		<th>Delete</th>
		
	</tr>
<%
	while(rs.next())
	{
	String name=rs.getString(2);
	String report=rs.getString(3);
		
%>
	<tr>
		<td><%=name%></td>
	
		<td><a href="reports/<%=report%>" >Download</a></td>
		
	<td><a href="doctorviewreports.jsp?value=<%=rs.getInt(1)%>" style="text-decoration:underline">Delete</a></td>
	</tr>
<%
}
%>
</table>
<%
}
catch(Exception exe)
{
 System.out.println(exe);
}
%>

	
	
	
	
</form>		
	<jsp:include page="designs/lowerbody.txt"></jsp:include>

		</body>
</html>