<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login</title>
<script language="javascript" type="text/javascript" src="myscript.js" ></script>

</head>

<body>
<%@include file="getconnection.jsp" %>
<%	
	String username= request.getParameter("txtusername");
	session.setAttribute("username",username);
	String pwd= request.getParameter("txtpassword");
	String usertype=request.getParameter("usertype"); 
	int x=0;
	try
	{									
	
		
		if(usertype.compareTo("1")==0)
		{
			 if(username.compareTo("admin")==0 && pwd.compareTo("admin123")==0)
			{
				session.setAttribute("userid","1000");
				response.sendRedirect("adminhome.jsp");
			}
		}
		else if(usertype.compareTo("2")==0)
		{
			 rs=st.executeQuery("select * from doctorregistration where username='"+username+"' and password='"+pwd+"' and status='Approved';");
			if(rs.next())
			{
				x=1;
				session.setAttribute("username",username);
				response.sendRedirect("doctorhome.jsp");	
			}
		}
		else  if(usertype.compareTo("3")==0)
		{
			 rs=st.executeQuery("select * from tbluserregister where username='"+username+"' and password='"+pwd+"';");
			if(rs.next())
			{
				x=1;
				session.setAttribute("username",username);
				response.sendRedirect("userhome.jsp");	
			}
		}
		
		if(x==0)
		{
				//response.sendRedirect("index.jsp?msg=Invalid Username or Password");
				%><script type="text/javascript" language="javascript">
				alert("Invalid Username or Password");
				location.href="index.jsp";
				</script>
				<%
		}
		
}
catch(Exception exe)
{
	System.out.println(exe);
	//response.sendRedirect("index.jsp?msg=Server Error");
	
}
%>


</body>
</html>
