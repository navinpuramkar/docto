<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<head>
<script type="text/javascript" language="javascript">
function dataupdate()
{
	form.action="doctorreplychatupdate.jsp";
}
</script>
<jsp:include page="designs/head.txt"/>
</head>

<body>
<jsp:include page="designs/doctorupperbody.txt"/>
<form name="form" method="post">
<table align="center">


<tr><td>
<%@include file="getconnection.jsp" %>

<%
	try
	{
		String s[]=request.getParameterValues("chkupdate");
		int n=s.length;
	
%>
	<div style="overflow:scroll;width:1000px;height:150px;">		<table width="200px" align="left" border="2">
				<tr>
				<td>
				<td>Patient Name</td>
				<td>chat</td>
				<td>Date</td>
				<td>Reply</td>	
				
				
			</tr>
<%
		for(int i=0;i<n;i++)
		{
			 rs=st.executeQuery("Select * from tblofflinechat where chatid="+Integer.parseInt(s[i])+";");
		if(rs.next())	
		{
%>
	<tr>		<td><input type="text"  type="hidden" value="<%=rs.getInt(1)%>" readonly="true" name="txtchatid"/></td>

				<td><input type="text"  readonly="true" value="<%=rs.getString(3)%>" name="patientname"/></td>
				<td><input type="text"   readonly="true" value="<%=rs.getString(4)%>" name="chat"/></td>
				<td><input type="text"   readonly="true" value="<%=rs.getString(5)%>" name="txtdate"/></td> 
				<td><input type="text" value="<%=rs.getString(6)%>"  name="reply"/></td>
				
							
			</tr>
<%
		}
		}
%>
		</table></div>
		
		<table align="right" border="2">
			<tr>
<td><input type="submit" value="Update" onclick="dataupdate()"/></td>
			</tr>
			</table>
<%
	}
	catch(Exception exe)
	{
		System.out.print(exe);
	}
%>
   

</td></tr>
</table>
</form>
			
	
<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
