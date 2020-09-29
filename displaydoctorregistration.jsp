<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registered doctors</title>
		
<script type="text/javascript" language="javascript">
function approve()
{
	displayform.action="adminapprovedoctor.jsp";
}
function reject()
{
	displayform.action="adminrejectdoctor.jsp";
}
</script>

		<jsp:include page="designs/head.txt"></jsp:include>
			

	</head>
	<body>
	<jsp:include page="designs/adminupperbody.txt"></jsp:include>
	
	<form  name="displayform" method="post">
	<h1 align="center"> Registered Doctors</h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	

if(request.getParameter("id")!=null)
		{
		if(request.getParameter("v").compareTo("1")==0)
			{
			st.executeUpdate("update doctorregistration  set status='Approved'  where username='"+(request.getParameter("id"))+"'");		
				%>
					<script language="javascript" type="text/javascript">
					alert("Registration Accepted");
					</script>
				<%
			}

		else
		{
			int i=st.executeUpdate("update doctorregistration  set status='Rejected' where username='"+(request.getParameter("id"))+"'");		
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
	rs=st.executeQuery("select * from doctorregistration;");
	%>
	<table border="2" align="center">
	<tr>
		<th>Doctor Name</th>
		<th>Works at</th>
		<th>Qualification</th>
		<th>Specification</th>
		<th>Expirence</th>
		<th>Email ID</th>
		<th>Mobile No. </th>
		<th>Appointment Days</th>
		<th>On Request</th>
		<th>Fee</th>
		<th>Area</th>
		<th>Photo</th>
		<th>Accepts</th>
		<th>Status</th>
		<th>Accept</th>
		<th>Reject</th>
		
		
	</tr>
<%
	while(rs.next())
	{
	String name=rs.getString(1);
	String Works=rs.getString(3);
	String Qualification=rs.getString(4);
	String Specification=rs.getString(5);
	String Expirence=rs.getString(6);
	String Email=rs.getString(7);
	String Mobile=rs.getString(8);
	String Monday=rs.getString(10);
	String Tuesday=rs.getString(11);
	String  Wednesday=rs.getString(12);
	String Thursday=rs.getString(13);
	String Friday=rs.getString(14);
	String  Saturday=rs.getString(15);
	String Sunday=rs.getString(16);
	String Request=rs.getString(17);
	String health=rs.getString(18);
	String government=rs.getString(19);
	String fee=rs.getString(20);
	String area=rs.getString(21);
	String photo=rs.getString(22);
	String status=rs.getString(24);
	//int branch=rs.getString(4);
		
%>
	<tr>
		<td><%=name%></td>
		<td><%=Works%></td>
		<td><%=Qualification%></td>
		<td><%=Specification%></td>
		<td><%=Expirence%></td>
		<td><%=Email%></td>
		<td><%=Mobile%></td>
		<td><%=Monday%><br />
			<%=Tuesday%><br />
			<%=Wednesday%><br />
	<%=Thursday%><br />
		<%=Friday%><br />
		<%=Saturday%><br />
		<%=Sunday%></td>
		<td><%=Request%></td>
		<td><%=health%><%=government%></td>
		<td><%=fee%></td>
		<td><%=area%></td>
		<td><img src="loginphotos/<%=photo%>"  height="100" width="200"/></td>
		<td><%=status%></td>
		
		<td>
			<a href="displaydoctorregistration.jsp?id=<%=rs.getString(2)%>&v=1">Accept</a>
		</td>
		<td>
			<a href="displaydoctorregistration.jsp?id=<%=rs.getString(2)%>&v=2">Reject</a>
		</td>

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