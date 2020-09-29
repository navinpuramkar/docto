<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>User home</title>
<jsp:include page="designs/head.txt"/>
</head>

<body>
<jsp:include page="designs/userupperbody.txt"/>
<h1 style="font-size:18px">Welcome  <%=session.getAttribute("username").toString()%></h1></marquee>

	<%@include file="getconnection.jsp" %>


<%

	rs=st.executeQuery("select * from doctorregistration where username='"+session.getAttribute("username").toString()+"';");
	while(rs.next())
	{
	%>
	
	<table align="center">
		<tr>
			<td><img src="loginphotos/<%=rs.getString("photo")%>" /></td>
		</tr>
	</table>
	<%
	}
	%>
<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
