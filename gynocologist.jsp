<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registered Users</title>
		
		<jsp:include page="designs/head.txt"></jsp:include>
	</head>
	<body>
	<jsp:include page="designs/upperbody.txt"></jsp:include>
	<form  name="displayform" method="post"><br />
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
	rs=st.executeQuery("select * from doctorregistration  where specilization='Gyneocology';");
	%>
	<%
	while(rs.next())
	{
	String name=rs.getString(1);
	String worksat=rs.getString(3);
	String qualification=rs.getString(4);
	String  specilization=rs.getString(5);
	String experience=rs.getString(7);
	String emailid=rs.getString(8);
	String monday=rs.getString(10);
	String tuesday=rs.getString(11);
	String wednesday=rs.getString(12);
	String thursday=rs.getString(13);
	String friday=rs.getString(14);
	String saturday=rs.getString(15);
	String sunday=rs.getString(16);
	String health=rs.getString(17);
	String government=rs.getString(18);
	String fees=rs.getString(19);
	String area=rs.getString(20);
	
	
		String photo=rs.getString(22);
	//int branch=rs.getString(4);
		
%><table align="center" border="2">
	<tr>
		<td>
			<table>
			<tr>
				<td><img src="loginphotos/<%=photo%>"  height="200" width="200"/></td>
			</tr>
			</table>
			</td>
			<td>
				<table>
				<tr><td><%=name%></td></tr>
				<tr><td><%=worksat%></td></tr>
				<tr><td><%=qualification%></td></tr>
				<tr><td><%=specilization%></td></tr>
				<tr><td><%=experience%></td></tr>
				<tr><td><%=emailid%></td></tr>
				<tr><td><%=monday%><%=tuesday%><%=wednesday%><%=friday%><%=saturday%><%=sunday%></td></tr>
				<tr><td><%=health%><%=government%></td></tr>
				<tr><td><%=fees%></td></tr>
			</table>
		</td>
	</tr>
	</table>
		
	<%
}
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