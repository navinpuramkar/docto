

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<script language="javascript" type="text/javascript">
	history.forward();
</script>

    </head>
    <body>
	<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
	<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
	<%@include file="getconnection.jsp" %>
    <%
		try
		{
				MultipartRequest m = new MultipartRequest(request, "C:\\Tomcat 6.0\\webapps\\docto\\reports",(5 * 1024 * 1024),new DefaultFileRenamePolicy( ));
				int i=0;
				String report = m.getFilesystemName("report") ;
					
								
					   String sql="insert into tbluploadreports values(null,'"+session.getAttribute("username").toString()+"','"+report+"')";
					   i=st.executeUpdate(sql);
					   //response.sendRedirect("Userregister.jsp");
					   				if(i>0)
				{
				%>
				<script type="text/javascript" language="javascript">
					alert(" Uploaded Successfully");
					location.href="uploadreport.jsp";
				</script>
				<%
				}
				else
				{
				%>
				<script type="text/javascript" language="javascript">
					alert(" Upload Unsuccessfully");
				location.href="uploadreport.jsp";
				</script>
				<% }

				
		}
	catch(Exception exe)
	{
		System.out.println(exe);
	}
%>

 </body>
</html>
