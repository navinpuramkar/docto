

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
                    int i=0;
				MultipartRequest m = new MultipartRequest(request, "C:\\s",(5 * 1024 * 1024),new DefaultFileRenamePolicy( ));
								
				
				String photo = m.getFilesystemName("photo") ;
				String txtname=m.getParameter("txtname");
				String lastname=m.getParameter("lastname");
	               		String username=m.getParameter("username");
				String txtemailid=m.getParameter("txtemailid");
				String txtmobilenumber=m.getParameter("txtmobilenumber");
				String alternativenumber=m.getParameter("alternativenumber");
			  
				String txtconfirmpassword=m.getParameter("txtconfirmpassword");
				String rbdgender=m.getParameter("rbdgender");
				String age=m.getParameter("age");
				String bloodgroup=m.getParameter("bloodgroup");
				String city=m.getParameter("city");
					
				String sql1="select * from tbluserregister where username='"+username+"'";
	                     	Statement st5=con.createStatement();
				ResultSet rs1=st5.executeQuery(sql1);
				
				if(rs1.next())
				{
					response.sendRedirect("tbluserregister.jsp?msg=Username already occupied!Try another.");
					rs1.close();		
				}
				else
				{
					   String sql="insert into tbluserregister values('"+txtname+"','"+lastname+"','"+username+"','"+txtemailid+"','"+txtmobilenumber+"','"+alternativenumber+"','"+txtconfirmpassword+"','"+rbdgender+"','"+age+"','"+bloodgroup+"','"+city+"','"+photo+"')";
					   i=st.executeUpdate(sql);
					   //response.sendRedirect("Userregister.jsp");
					   				if(i>0)
				{
				%>
				<script type="text/javascript" language="javascript">
					alert(" Registered Successfully");
					location.href="Userregister.jsp";
				</script>
				<%
				}
				else
				{
				%>
				<script type="text/javascript" language="javascript">
					alert(" Registered Unsuccessfully");
				location.href="Userregister.jsp";
				</script>
				<% }

				}
		}
	catch(Exception exe)
	{
		System.out.println(exe);
	}
%>

 </body>
</html>
