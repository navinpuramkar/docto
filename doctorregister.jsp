<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<script language="javascript" type="text/javascript" src="myscript.js"></script>
<script type="text/javascript" language="javascript">
function check()
{
	if(register.txtname.value=="")
	{
		alert("Enter Doctors Name");
		register.txtname.focus();
		return false;
	}
	else if(register.txtworksat.value="")
	{
		alert("Enter  Work Place");
		register.txtworksat.focus();
		return false;
	}
	else if(register.qualification.value=="")
	{
		alert("Enter Doctors Qualification");
		register.qualification.focus();
		return false;
	}
	else if(register.specilization.value=="")
	{
		alert("Enter Doctors Specilization");
		register.specilization.focus();
		return false;
	}
	else if(register.experience.value=="0")
	{
		alert("Enter Doctors Experience");
		register.txtname.focus();
		return false;
	}
	else if(register.txtemailid.value=="")
	{
		alert("Enter Email Id");
		register.txtemailid.focus();
		return false;
	}	
	else if(register.txtmobilenumber.value=="")
	{
		alert("Enter Mobile Number");
		register.txtmobilenumber.focus();
		return false;
	}
	else if(register.txtpassword.value=="")
	{
		alert("Enter Password");
		register.txtpassword.focus();
		return false;
	}
	else if(register.txtconfirmpassword.value=="")
	{
		alert("Enter Confirm Password");
		register.txtconfirmpassword.focus();
		return false;
	}
}
</script>
<jsp:include page="/designs/head.txt"/>
</head>
<body>
<jsp:include page="/designs/upperbody.txt" />
<form name="register" method="post" action="doctorregistrationcode.jsp" enctype="multipart/form-data">
<h1 align="center"> Doctor Registration Here</h1>
<br />
<br />

 
<table align="center" border="1">
	<tr>	
		<td>Doctor Name</td>
		<td><input type="text" name="txtname"  onkeypress="return character(event)" /></td>
	</tr>
	<tr>
		<td>Username</td>
		<td><input  type="text"  name="username" /></td>
	</tr>
		
	<tr>
		<td>Works at</td>
		<td><textarea name="txtworksat"></textarea></td>
	</tr>
	<tr>
		<td>Qualification</td>
		<td><textarea name="Qualification" ></textarea></td>
	</tr>
	<tr>
		<td>Specilization</td>
		<td><select name="specilization" >
			<option>Urologist</option>
			<option>Cardiologist</option>
			<option>Neurologist</option>
			<option>Gastroenterologist</option>
			<option>psychiatrist</option>
			<option>Ayurveda</option>
			<option>Homeopath</option>
			<option>Opthalmologist</option>
			<option>Dentist</option>
			<option>Gyneocology</option>
			<option>ENT</option>
			<option>Dermatologist</option>
			</td>
	</tr>
	<tr>
		<td>Experience(In Years)</td>
		<td><select name="experience">
			<option id="0">0</option>
			<option id="1" >1 </option>
			<option id="2">2</option>
			<option  id="3">3</option>
			<option>4</option>
			<option>5 </option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9 </option>
			<option>10</option>
			<option>11</option>
			<option>12</option>
			<option>13</option>
			<option>14</option>
			<option>15</option>
			<option>16</option>
			<option>17</option>
			<option>18</option>
			</select></td>
	</tr>
	<tr>
		<td>Email ID</td>
		<td><input type="text" name="txtemailid"  /></td>
	</tr>
	<tr>
		<td>Mobile</td>
		<td><input type="text" name="txtmobilenumber" maxlength="10" onkeypress="return number(event)" /></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="txtpassword" /></td>
	</tr>
	<tr>
		<td>Confirm Password</td>
		<td><input type="password" name="txtconfirmpassword" /></td>
	</tr>
	
	<tr>
		<td>Appointment days</td>
		<td><input type="checkbox" name="chkmonday" value="yes" />Monday
		<input type="checkbox" name="chktuesday" value="yes" />Tuesday
		<input type="checkbox" name="chkwednesday" value="yes" />Wednesday
		<input type="checkbox" name="chkthursday" value="yes" />Thursday
		<input type="checkbox" name="chkfriday" value="yes" />Friday
		<input type="checkbox" name="chksaturday" value="yes" />Saturday<br />
	<center>	<input type="checkbox" name="chksunday" value="yes"  />Sunday(on request <input type="radio"  value="yes" name="request1" />Yes&nbsp;<input type="radio" name="request1" value="no" />No)</center></td>
	</tr>
	<tr>
		<td>Card Acceptance</td>
		<td><input type="checkbox" name="health"  />Health Insurance &nbsp;<input  type="checkbox" name="government" />Government Card</td>
	</tr>
	<tr>
		<td>Consulting Fee</td>
		<td><input type="text" name="fee" onkeypress="return number(event)" /></td>
	</tr>
	<tr>
		<td>Area</td>
		<td><input type="text" name="area" /></td>
	</tr>
	<tr>
		<td>Upload Photo</td>
		<td><input type="file" name="photo" /></td>
	</tr>		
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Register" onclick="return check()" />&nbsp;<input  type="reset"  value="Cancel" /></td>
	</tr>
</table>
<br />
<br />

</form>
<jsp:include page="/designs/lowerbody.txt" />
</body>
</html>
