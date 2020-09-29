<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Feed Back</title>
<jsp:include page="designs/head.txt"/>
<%@include file="getconnection.jsp" %>y

<script  type="text/javascript" language="javascript">
	function Check()
		{
			if(feedback.doctorname.value=="")
			{
				alert("Select Doctor Name");
				feedback.doctorname.focus();
				return false;
			}
			else if(feedback.feed.value=="")
			{
				alert("Add Feed Back");
				feedback.feed.focus();
				return false;
			}
			else
			{
				return true;
			}
		}
	</script>	


</head>

<body>
<jsp:include page="designs/userupperbody.txt"/>
<form name="feedback" method="post" action="feedbackcode.jsp">
<table align="center" border="2">
<tr>
	<td>Doctor  Name</td>
	<td><select name="doctorname" >
			<option >Select</option>
									<%
										rs=st.executeQuery("select * from doctorregistration order by username");
										while(rs.next())
										{
											%>
												<option ><%=rs.getString(1)%></option>
											<%
										}
										rs.close();
									%>
									</select></td>
</tr>
<tr>
	<td>Enter Your FeedBack</td>
	<td><textarea name="feed" ></textarea></td>
</tr>
<tr>
	<td colspan="2" align="center"><input type="submit" value="Submit" onclick="return check()" />&nbsp;<input type="reset" value="Cancel" /></td>
</table>
</form>
<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
