<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title> doctors feedback</title>
		

		<jsp:include page="designs/head.txt"></jsp:include>
			

	</head>
	<body>
	<jsp:include page="designs/adminupperbody.txt"></jsp:include>
	
	<form  name="displayform" method="post">
	<h1 align="center">Users Feedback</h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	

if(request.getParameter("id")!=null)
		{
			st.executeUpdate("delete from tblfeedback  where fid='"+(request.getParameter("id"))+"'");		
				%>
					<script language="javascript" type="text/javascript">
					alert("Record Deleted");
					</script>
				<%
			}

	

try
{
	rs=st.executeQuery("select * from tblfeedback;");
	%>
	<table border="2" align="center">
	<tr>
		<th>Doctor Name</th>
		<th>Feedback</th>
		<th>Delete</th>
		
	</tr>
<%
	while(rs.next())
	{
	String doctorname=rs.getString(2);
	String feedback=rs.getString(3);
		
%>
	<tr>
		<td><%=doctorname%></td>
		<td><%=feedback%></td>
		<td>
			<a href="adminviewfeedback.jsp?id=<%=rs.getString(1)%>">delete</a>
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