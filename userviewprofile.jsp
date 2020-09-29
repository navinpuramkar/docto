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
	rs=st.executeQuery("select * from tbluserregister where username='"+session.getAttribute("username").toString()+"';");
	%>
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
<table align="center">
	<tr>
		<td><table align="center">
			<tr>
				<td><img src="loginphotos/<%=photo%>"  height="120"/></td>
			</tr>
			</table>
		</td>
		<td>
			<table align="center" style="font-size:18px">
			<tr><td><%=name%></td></tr>
			<tr><td><%=lastname%></td></tr>
			<tr><td><%=emailid%></td></tr>
		<tr><td><%=mobileno%></td></tr>
		<tr><td><%=alternative%></td></tr>
		<tr><td><%=gender%></td></tr>
	
		<tr><td><%=age%></td></tr>
		<tr><td><%=bloodgroup%></td></tr>
		<tr><td><%=city%></td></tr>
		</table>
	</td>
	</tr>
	</table>
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