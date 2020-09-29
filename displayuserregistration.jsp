<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registered Users</title>
		
		<jsp:include page="designs/head.txt"></jsp:include>
	</head>
	<body>
	<jsp:include page="designs/adminupperbody.txt"></jsp:include>
	<form  name="displayform" method="post">
	<h1 align="center"> Registered Users</h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	
if(request.getParameter("value")!=null)
		{
			st.executeUpdate("delete from tbluserregister where emailid='"+(request.getParameter("value"))+"'");		
			
			%>
			<script language="javascript" type="text/javascript">
			alert("Record Deleted");
			</script>
			<%
		}
try
{
	rs=st.executeQuery("select * from tbluserregister;");
	%>
	<table border="2" align="center"  style="font-size:18px">
	<tr>
		<td>First Name</td>
		<td>Lastname</td>
		<td>Email ID</td>
		<td>Mobile No. </td>
		<td>Alternative Number</td>
		<td>Gender</td>
		<td>Age</td>
		<td>Blood Group</td>
		<td>City </td>
		<td>Photo</td>
		<th>Delete</th>
		
	</tr>
<%
	while(rs.next())
	{
	String name=rs.getString(1);
	String lastname=rs.getString(2);
	String emailid=rs.getString(4);
	String  mobileno=rs.getString(5);
	String alternative=rs.getString(6);
	String gender=rs.getString(8);
	String age=rs.getString(9);
	String bloodgroup=rs.getString(10);
	String city=rs.getString(11);
		String photo=rs.getString(12);
	//int branch=rs.getString(4);
		
%>
	<tr>
		<td><%=name%></td>
	
		<td><%=lastname%></td>
		<td><%=emailid%></td>
		<td><%=mobileno%></td>
		<td><%=alternative%></td>
		<td><%=gender%></td>
	
		<td><%=age%></td>
		<td><%=bloodgroup%></td>
		<td><%=city%></td>
		<td><img src="loginphotos/<%=photo%>" /></td>

	<td><a href="displayuserregistration.jsp?value=<%=rs.getString(2)%>" style="text-decoration:underline">Delete</a></td>
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