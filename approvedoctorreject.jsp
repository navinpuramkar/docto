<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>reject  request</title>
		<script language="javascript" type="text/javascript" src="myscript.js" ></script>

	<script type="text/javascript" language="javascript" src="myscript.js"></script></head>


<body>
	<%@include file="getconnection.jsp" %>
<%
try
{
			
		String s[]=request.getParameterValues("chkreject");
		int n=s.length,i=0;
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			st.executeUpdate("update doctorregistration set status='Rejected' where emailid='"+s[i]+"'");
		}
		if(i==n)
		{
		%>
		
			<script language="javascript" type="text/javascript">
				alert("Doctors(s) Rejected");
				location.href="displaydoctorregistration.jsp";
			</script>
		<%
		}
		else
		{
		%>
			<script language="javascript" type="text/javascript">
				alert("Doctors(s) Rejected Failed");
				location.href="displaydoctorregistration.jsp";
			</script>
			<%
		}
		
}
catch(Exception exe)
{
%>
	<script language="javascript" type="text/javascript">
				alert("Server Error!! Try Later");
				location.href="approvestudent.jsp";
			</script>
			
			<%
}

	
%>

</body>
</html>
