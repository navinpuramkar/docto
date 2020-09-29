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
		java.util.Date dt=new java.util.Date();
		String date=dt.toString();
		String reply="null";
			int i=0;
				String doctorname=request.getParameter("doctorname");
					
				String feed=request.getParameter("feed");
									   String sql="insert into tblofflinechat values(null,'"+doctorname+"','"+session.getAttribute("username").toString()+"','"+feed+"','"+dt+"','"+reply+"')";
					  i=st.executeUpdate(sql);
					   //response.sendRedirect("Userregister.jsp");
					   if(i>0)
					   {
					   %>
					   <script type="text/javascript" language="javascript">
					   	alert("Record Inserted");
						location.href="offlinechat.jsp";
						</script>
						<%
						}
						else
						{
						%>
					   <script type="text/javascript" language="javascript">
					   	alert("Record Not Inserted");
						location.href="offlinechat.jsp";
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
