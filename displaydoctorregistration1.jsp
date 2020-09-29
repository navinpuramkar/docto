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
			st.executeUpdate("update doctorregistration  set status='Approved'  where emailid='"+(request.getParameter("id"))+"'");		
				%>
					<script language="javascript" type="text/javascript">
					alert("Registration Accepted");
					</script>
				<%
			}

		else
		{
			int i=st.executeUpdate("update doctorregistration  set status='Rejected' where emailid='"+(request.getParameter("id"))+"'");		
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
<%
	while(rs.next())
	{
	String name=rs.getString(1);
	String Works=rs.getString(2);
	String Qualification=rs.getString(3);
	String Specification=rs.getString(4);
	String Expirence=rs.getString(5);
	String Email=rs.getString(6);
	String Mobile=rs.getString(7);
	String Monday=rs.getString(9);
	String Tuesday=rs.getString(10);
	String  Wednesday=rs.getString(11);
	String Thursday=rs.getString(12);
	String Friday=rs.getString(13);
	String  Saturday=rs.getString(14);
	String Sunday=rs.getString(15);
	String Request=rs.getString(16);
	String status=rs.getString(17);
	//int branch=rs.getString(4);
		
%>
	<tr>
		<table>
			<tr>
				<td><img src="photos/" /></td>
				<td>
		<%=name%><br />

		<%=Works%><br />

		<%=Qualification%><br />

		<%=Specification%><br />

		<%=Expirence%><br />

		<%=Email%><br />

		<%=Mobile%><br />

		<%=Monday%><br />

		<%=Tuesday%><br />

		<%=Wednesday%><br />

		<%=Thursday%><br />

		<%=Friday%><br />

		<%=Saturday%><br />

		<%=Sunday%><br />

		<%=Request%><br />

		<%=status%>
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
	<jsp:include page="designs/lowerbody.txt"/>

		</body>
</html>