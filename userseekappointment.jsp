<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Registered doctors</title>
		<jsp:include page="designs/head.txt"></jsp:include>
	</head>
	<body>
	<jsp:include page="designs/userupperbody.txt"></jsp:include>
	<form  name="displayform" method="post" action="fixappointment.jsp">
	<h1 align="center"> Doctors </h1> <br />
<br />

	<%@include file="getconnection.jsp" %>

<%	
String status="Pending";
if(request.getParameter("value")!=null)
		{
					
			String sql="insert into fixappointment values(null,'"+(request.getParameter("value"))+"','"+session.getAttribute("username").toString()+"','"+status+"','"+(request.getParameter("emailid"))+"')";
			st.executeUpdate(sql);
			%>
			<script language="javascript" type="text/javascript">
			alert("Appointment Fixed");
			</script>
			<%
		}
try
{
	rs=st.executeQuery("select * from doctorregistration;");
	%>
	
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
	String Thursday=rs.getString(12);
	String Friday=rs.getString(14);
	String  Saturday=rs.getString(15);
	String Sunday=rs.getString(16);
	String Request=rs.getString(17);
	String health=rs.getString(18);
	String government=rs.getString(19);
	String fee=rs.getString(20);
	String area=rs.getString(21);
	String photo=rs.getString(22);
	//int branch=rs.getString(4);
	
		
%>
<table align="center" >
	<tr>
		<td width="50%">
			<table align="center">
			<tr>	
				<td><img src="loginphotos/<%=photo%>"  height="200" width="200"/></td>
			</tr>
			</table>
		</td>
		<td  width="50%">
			<table align="center">
				<tr><td><%=name%></td></tr>
				<tr><td><%=Works%></td></tr>
				<tr><td><%=Qualification%></td></tr>
				<tr><td><%=Specification%></td></tr>
				<tr><td><%=Expirence%></td></tr>
				<tr><td><%=Email%></td></tr>
				<tr><td><%=Mobile%></td></tr>
				<tr><td>Available on<%=Monday%>&nbsp;<%=Tuesday%>&nbsp;<%=Wednesday%>&nbsp;<%=Thursday%>&nbsp;<%=Friday%>&nbsp;<%=Saturday%>&nbsp;<%=Sunday%></td></tr>
				<tr><td>Accepts &nbsp;<%=health%><%=government%> card</td></tr>
				<tr><td><%=fee%></td></tr>
				<tr><td><%=area%></td></tr>		
				<tr><td><a href="userseekappointment.jsp?value=<%=rs.getString(1)%>&email=<%=rs.getString(7)%>">Fix Appointment</a></td></tr>
	
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