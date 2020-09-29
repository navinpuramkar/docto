<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title> doctors feedback</title>
		

		<jsp:include page="designs/head.txt"></jsp:include>

	</head>
	<body>
	<jsp:include page="designs/userupperbody.txt"></jsp:include>
	
	<form  name="displayform" method="post" action="doctorreplychat.jsp">
	<h1 align="center">Users Feedback</h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	

if(request.getParameter("id")!=null)
		{
			st.executeUpdate("delete from tblofflinechat  where chatid='"+(request.getParameter("id"))+"'");		
				%>
					<script language="javascript" type="text/javascript">
					alert("Record Deleted");
					</script>
				<%
			}

	

try
{
	rs=st.executeQuery("select * from tblofflinechat where patientname='"+session.getAttribute("username").toString()+"';");
	%>
	<table border="2" align="center">
	<tr>
		<th>doctor  Name</th>
		<th>Reply</th>
		<th>Date</th>
		<th>Delete</th>
		
	</tr>
<%
	while(rs.next())
	{
	String patientname=rs.getString(2);
	String chat=rs.getString(6);
	String date=rs.getString(5);
		
%>
	<tr>
		<td><%=patientname%></td>
		<td><%=chat%></td>
		<td><%=date%></td>
		<td>
			<a href="doctorviewchat.jsp?id=<%=rs.getString(1)%>">delete</a>
		
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