<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registered Users</title>
		<jsp:include page="designs/head.txt"></jsp:include>
	</head>
	<body>
	<jsp:include page="designs/doctorupperbody.txt"></jsp:include>
	<form  name="displayform" method="post" >
	<h1 align="center"> Registered Users</h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	

if(request.getParameter("id")!=null)
		{
		if(request.getParameter("v").compareTo("1")==0)
			{
			st.executeUpdate("update fixappointment  set status='Approved'  where requestedby='"+(request.getParameter("id"))+"'");		
				
				%>
					<script language="javascript" type="text/javascript">
					alert("Request Accepted");
					location.href="doctoraddappointmentdetails.jsp?id=<%= request.getParameter("id") %>";
					</script>
				<%
			}

		else
		{
			int i=st.executeUpdate("update fixappointment  set status='Rejected' where requestedby='"+(request.getParameter("id"))+"'");		
			if(i==1)
				{
					%>
						<script language="javascript" type="text/javascript">
							alert("Request Rejected");
						</script>
					<%
				}
				else
				{
					%>
					<script language="javascript" type="text/javascript">
						alert("Request is already Approved");
					</script>
					<%
				}
		
		}
}
try
{
					

	rs=st.executeQuery("select  * from fixappointment where  doctorname='"+session.getAttribute("username").toString()+"';");
	%>
	<table border="2" align="center">
	<tr>
		
		<th>requested by</th>
		<th>Status</th>
		<th>Accept</th>
		<th>Reject</th>
		
	</tr>
<%
	while(rs.next())
	{
	
	String requested=rs.getString(3);
	String status=rs.getString(4);
	//int branch=rs.getString(4);
		
%>
	<tr>
	
		<td><%=requested%></td>
		<td><%=status%></td>
		<td><a href="doctorviewappointmentrequest.jsp?id=<%=rs.getString(3)%>&v=1&name=<%=rs.getString(2)%>">Accept</a></td>
		<td><a href="doctorviewappointmentrequest.jsp?id=<%=rs.getString(3)%>&v=2&name=<%=rs.getString(2)%>">Reject</a></td>
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