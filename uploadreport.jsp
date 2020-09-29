<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<jsp:include page="designs/head.txt"/>
</head>

<body>
<jsp:include page="designs/userupperbody.txt"/>
<form name="form" method="post" enctype="multipart/form-data" action="uploadreportcode.jsp">
<table align="center" border="2" style="font-size:18px">

<tr>
	<td>Report</td>
	<td><input type="file" name="report" /></td>
</tr>
<tr>
	<td colspan="2" align="center"><input type="submit"  value="Upload" >&nbsp;<input type="reset" value="Cancel"></td>
</tr>
</table>
</form>
<jsp:include page="designs/lowerbody.txt"/>
</body>
</html>
