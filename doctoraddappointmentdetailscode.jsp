<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script language="javascript" type="text/javascript">
	history.forward();
	
</script>

</head>

<body>
 
<%@include file="getconnection.jsp" %>
    <%
		
	
		try
		{
				int i=0;
				String usertype="2";
				String pname=request.getParameter("pname");
				
				String date=request.getParameter("date");
				String Time=request.getParameter("Time");
				
					   String sql="insert into tblappointmentdetails values(null,'"+pname+"','"+session.getAttribute("username").toString()+"','"+date+"','"+Time+"')";
					  i=st.executeUpdate(sql);
					   //response.sendRedirect("doctorregister.jsp");
					   if(i>0)
					   {
					   %>
					   <script type="text/javascript" language="javascript">
					   	alert(" Details Added");
						location.href="doctorviewappointmentrequest.jsp";
						</script>
						<%
						}
						else
						{
						%>
					   <script type="text/javascript" language="javascript">
					   	alert("Details Not Added");
						location.href="doctorviewappointmentrequest.jsp";
						</script>
						<%
						}
				}
		
	catch(Exception exe)
	{
		System.out.println(exe);
	}
%>
</body>
</html>
