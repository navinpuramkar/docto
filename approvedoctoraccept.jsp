<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Accept request</title>

	

<body>
	<%@include file="getconnection.jsp" %>
<%
try
{
			
		String s[]=request.getParameterValues("chkaccept");
		int n=s.length,i=0;
		//System.out.println(n);
		for(i=0;i<n;i++)
		{
		System.out.println("-----------"+s[i]);
			st.executeUpdate("update doctorregistration set status='Approved' where emailid='"+s[i]+"'");
		} 	
		if(i==n)
		{
		%>
		 
			<script language="javascript" type="text/javascript">
				alert("Doctor(s) Approved");
				location.href="displaydoctorregistration.jsp";
			</script>
		<%
		}
		else
		{
		%>
			<script language="javascript" type="text/javascript">
				alert("Doctor(s) Approved Failed");
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
