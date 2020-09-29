<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registered doctors</title>
		
		<jsp:include page="designs/head.txt"></jsp:include>
			

	</head>
	<body>
	<jsp:include page="designs/adminupperbody.txt"></jsp:include>
	
	<form  name="displayform" method="post">
	<h1 align="center">Appointment details</h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	
try
{
	rs=st.executeQuery("select * from tblappointmentdetails;");
	%>
	<table border="2" align="center">
	<tr>
		<th>Appoitment ID</th>
		<th>Patient Name</th>
		<th>Doctor Name</th>
		<th>Date</th>
		<th>Time</th>
		
	</tr>
<%
	while(rs.next())
	{
	String appointmentid=rs.getString(1);
	String patientname=rs.getString(2);
	String doctorname=rs.getString(3);
	String date=rs.getString(4);
	String time=rs.getString(5);
		
%>
	<tr>
		<td><%=appointmentid%></td>
		<td><%=patientname%></td>
		<td><%=doctorname%></td>
		<td><%=date%></td>
		<td><%=time%></td>
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
	<jsp:include page="designs/lowerbody.txt"/>

		</body>
</html>