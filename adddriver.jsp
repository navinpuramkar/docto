<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Add Cab</title>
<jsp:include page="designs/head.txt"/>
<script language="javascript" type="text/javascript" src="myscript.js"></script>

<script type="text/javascript" language="javascript">
function check()
{
	if(frmaddcab.txtdrivername.value=="")
	{
		alert("Enter Drivername");
		frmaddcab.txtdrivername.focus();
		return false;
	}
	else if(frmaddcab.txtvehicle.value=="")
	{
		alert("Enter Vehicle");
		frmaddcab.txtvehicle.focus();
		return false;
	}
	else if(frmaddcab.txtvehicletype.value=="")
	{
		alert("Enter Vehicle Type");
		frmaddcab.txtvehicletype.focus();
		return false;
	}
	else if(frmaddcab.txtmodelyear.value=="")
	{
		alert("Enter Model year");
		frmaddcab.txtmodelyear.focus();
		return false;
	}
	else if(frmaddcab.txtdrivernumber.value=="")
	{
		alert("Enter Driver Number");
		frmaddcab.txtdrivernumber.focus();
		return false;
	}
	else if(frmaddcab.txtdrivinglicencenumber.value=="")
	{
		alert("Enter Driving Licence Number");
		frmaddcab.txtdrivinglicencenumber.focus();
		return false;
	}
	else if(frmaddcab.city.value=="")
	{
		alert("Enter City");
		frmaddcab.city.focus();
		return false;
	}
}
</script>
</head>

<body>
<jsp:include page="designs/adminupperbody.txt"/>
<form name="frmaddcab" method="post" action="addcabcode.jsp">
<table align="center" border="2" cellpadding="3" cellspacing="3">
	<h1 align="center">ADD CAB</h1> 
	<tr>
		<td> Driver Name</td>
		<td><input type="text" name="txtdrivername" onKeyPress="return character(event)"  maxlength="50"/></td>
	</tr>
	<tr>
		<td>Vehicle</td>
		<td><input type="text" name="txtvehicle" maxlength="50"/></td>
	</tr>
	<tr>
		<td>Vehicle Type</td>
		<td> <select name="vehicletype">
		<option>--Select--</option>
		<option>Car</option>
		<option>Van</option>
		<option>TT</option>
		<option>Taxi</option>
		</select></td>
	</tr>
	<tr>
		<td>Model Year</td>
		<td><input type="text" name="txtmodelyear" maxlength="50"/></td>
	</tr>
	<tr>
		<td>Driver Number</td>
		<td><input type="text" name="txtdrivernumber" maxlength="10"/></td>
	</tr>
	<tr>
		<td>Driving licence Number</td>
		<td><input type="text" name="txtdrivinglicencenumber" /></td>
	</tr>
	<tr>
		<td>City</td>
		<td><select name="city">
			<option>--Select--</option>
			<option>Gulbarga</option>
			<option>Bidar</option>
			<option>Raichur</option>
			<option>Bellary</option>
			<option>Hubli</option>
		</select></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" name="btnsubmit" value="Submit" onClick="return check()"/> &nbsp; <input type="reset" name="btnreset" value="Reset"/></td>
	</tr>
</table> 
<br>
<br>
<br>
<br>
<br>


	<%@include file="getconnection.jsp" %>

<%	
if(request.getParameter("value")!=null)
		{
			st.executeUpdate("delete from tbladdcab where drivinglicencenumber='"+(request.getParameter("value"))+"'");		
			%>
			<script language="javascript" type="text/javascript">
			alert("Record Deleted");
		
			</script>
			<%
		}		
try
{
	rs=st.executeQuery("select * from tbladdcab ;");
	%>
	<table border="2" align="center">
	<tr>
		<td>Driver Name</td>
		<td>Vehicle</td>
		<td>Vehicle Type </td>
		<td>Model Year </td>
	
		
		<td>Driver Number </td>
		<td>Driving Licence Number </td>
		<td>City </td>
		<td>Delete</td>
		
	</tr>
<%
	while(rs.next())
	{
	String name=rs.getString(1);
	String Vehicle=rs.getString(2);
	String  VehicleType=rs.getString(3);
	String ModelYear=rs.getString(4);
	String DriverNumber=rs.getString(5);
	String LicenceNumber=rs.getString(6);
	String City=rs.getString(7);
	//int branch=rs.getString(4);
		
%>
	<tr>
		<td><%=name%></td>	
		<td><%=Vehicle%></td>
		<td><%=VehicleType%></td>		
		<td><%=ModelYear%></td>
		<td><%=DriverNumber%></td>
		<td><%=LicenceNumber%></td>
		<td><%=City%></td>
		<td><a href="addcab.jsp?value=<%=rs.getString(6)%>" style="text-decoration:underline">Delete</a></td>
	</tr>
<%
}
%>
</table>
<%
}
catch(Exception exe)
{
 System.out.println(exe);
}
%>

	
	
	
</form>
<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
