<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<%@include file="getconnection.jsp" %>

<%
	try
	{	
		int c=0;
		String txtchatid[]=request.getParameterValues("txtchatid");
		String patientname[]=request.getParameterValues("patientname");
		String chat[]=request.getParameterValues("chat");
		String txtdate[]=request.getParameterValues("txtdate");
		String reply[]=request.getParameterValues("reply");
		int n=txtchatid.length;
		for(int i=0;i<n;i++)
		{
		int a=st.executeUpdate("UPDATE  tblofflinechat SET patientname='"+patientname[i]+"',chat='"+chat[i]+"',reply='"+reply[i]+"' where chatid="+Integer.parseInt(txtchatid[i])+";");
		}
		
	%>
		<script type="text/javascript" language="javascript">
			alert("Data Updated");
			location.href="doctorviewchat.jsp";
		</script>
		
	<%	
		
	}
	catch(Exception exe)
	{
		System.out.print(exe);
		%>
		<script type="text/javascript" language="javascript">
			alert("Server Error!!!");
			location.href="doctorviewchat.jsp";
		</script>
		
	<%	
	}

%>



</body>
</html>
