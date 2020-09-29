

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
			MultipartRequest m = new MultipartRequest(request, "C:\\s",(5 * 1024 * 1024),new DefaultFileRenamePolicy( ));
				
				int a=0;
				String usertype="2";
				String status="pending";
				String photo = m.getFilesystemName("photo") ;
				String txtname=m.getParameter("txtname");
				String username=m.getParameter("username");
				String txtworksat=m.getParameter("txtworksat");
				String Qualification=m.getParameter("Qualification");
				String specilization=m.getParameter("specilization");
			  
				String experience=m.getParameter("experience");
				String txtemailid=m.getParameter("txtemailid");
				String txtmobilenumber=m.getParameter("txtmobilenumber");
				String txtconfirmpassword=m.getParameter("txtconfirmpassword");
				String chkmonday="";
				if(m.getParameter("chkmonday")!=null)
				{
					chkmonday="Monday";
				}
				else
				{
					chkmonday="";
				}
				String chktuesday="";
				if(m.getParameter("chktuesday")!=null)
				{
					chktuesday="Tuesday";
				}
				else
				{
					chktuesday="";
				}
				String chkwednesday="";
				if(m.getParameter("chkwednesday")!=null)
				{
					chkwednesday="Wednesday";
				}
				else
				{
					chkwednesday="";
				}
				String chkthursday="";
				if(m.getParameter("chkthursday")!=null)
				{
					chkthursday="Thursday";
				}
				else
				{
					chkthursday="";
				}
				String chkfriday="";
				if(m.getParameter("chkfriday")!=null)
				{
					chkfriday="Friday";
				}
				else
				{
					chkfriday="";
				}
				String chksaturday="";
				if(m.getParameter("chksaturday")!=null)
				{
					chksaturday="Saturday";
				}
				else
				{
					chksaturday="";
				}
				String chksunday="";
				if(m.getParameter("chksunday")!=null)
				{
					chksunday="Sunday";
				}
				else
				{
					chksunday="";
				}
				String requeston=request.getParameter("request");
				String password=request.getParameter("txtconfirmpassword");

				String request1=m.getParameter("request1");
				String health="";
				if(m.getParameter("health")!=null)
				{
					health="Health";
				}
				else
				{
					health="";
				}
				String government="";
				if(m.getParameter("government")!=null)
				{
					government="Health";
				}
				else
				{
					government="";
				}
				String fee=m.getParameter("fee");
				String area=m.getParameter("area");
				

				String sql1="select * from doctorregistration where username='"+txtname+"'";
				Statement st5=con.createStatement();
				ResultSet rs1=st5.executeQuery(sql1);
				
				if(rs1.next())
				{
					//response.sendRedirect(".jsp?msg=Username already occupied!Try another.");
                                            %><script type="text/javascript"   language="javascript">
					alert("Username already exists");
					location.href="doctorregister.jsp";
					</script>					
					
					<%
								
				}
				else
				{
				
				
					   String sql="insert into doctorregistration values('"+txtname+"','"+username+"','"+txtworksat+"','"+Qualification+"','"+specilization+"','"+experience+"','"+txtemailid+"','"+txtmobilenumber+"','"+txtconfirmpassword+"','"+chkmonday+"','"+chktuesday+"','"+chkwednesday+"','"+chkthursday+"','"+chkfriday+"','"+chksaturday+"','"+chksunday+"','"+request1+"','"+health+"','"+government+"','"+fee+"','"+area+"','"+photo+"','"+usertype+"','"+status+"')";
					    a=st.executeUpdate(sql);
					   //response.sendRedirect("doctorregister.jsp");
					   if(a>0)
					   {
					   	%>
						<script type="text/javascript" language="javascript">
						alert("Registration Successfull");
						location.href="doctorregister.jsp";
						</script>
						<%
						}
						else
						{
						%>
						<script type="text/javascript" language="javascript">
						alert("Registration Unsuccessfull");
						location.href="doctorregister.jsp";
						</script>
						<%
						}
					   
					   
					  
				}
		}
	catch(Exception exe)
	{
		System.out.println(exe);
	}
%>

 </body>
</html>
