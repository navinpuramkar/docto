<%@page import="java.sql.*,java.util.*" contentType="text/html"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
	<script type="text/javascript" src="CountDown.js"></script>
<script type="text/javascript">
window.onload=WindowLoad;
function WindowLoad(event) {
	ActivateCountDown("CountDownPanel", 12000);
}
</script>
<style type="text/css">
#CountDownPanel {color: blue; background-color: yellow; font-size: 18px;}
</style>

	
	
	<jsp:include page="/design/head.txt"/>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/r2.css" rel="stylesheet">
    </head>
       <body>
<jsp:include page="/design/student_mid.txt"/>
<%
	if(session.getAttribute("QN")==null)
	{
		session.setAttribute("QN","1");
	}
%>

Time Remaining:&nbsp;&nbsp;<span id="CountDownPanel"></span>
<br/>
<table width="75%" align="left"  >
	<tr>
		<td  width="75%" >
		<div >
		
		<form  name="frm1" action="saveanswer.jsp" method="post" >
						<%
						
Class.forName("org.gjt.mm.mysql.Driver");
Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz1","","");
Statement st1=cn1.createStatement();
String question11="select a.intid,a.strquestion,a.stroption1,a.stroption2,a.stroption3,a.stroption4,b.intslnumber from tblquestions as a inner join tblsetquestionpaper as b ON a.intid=b.intquestionnumber and a.strsubject='Account' and b.strtesttype='mock test' and b.intslnumber="+Integer.parseInt(session.getAttribute("QN").toString())+"";	
//ResultSet rs1=st1.executeQuery("select * from tblquestions where intid="+Integer.parseInt(session.getAttribute("QN").toString())+"");		
ResultSet rs1=st1.executeQuery(question11);		
					
						String question ="",option1="",option2="",option3="",option4=""; 
						while(rs1.next())
						{
							String qq="";
							if(rs1.getString(2).indexOf(".")!=-1)
							{
								qq=rs1.getString(2).substring(rs1.getString(2).indexOf(".")+1);
							}
							else
							{
								qq=rs1.getString(2);
							}
							question =rs1.getInt("b.intslnumber")+")"+qq;
							option1=rs1.getString(3);
							option2=rs1.getString(4);
							option3=rs1.getString(5);
							option4=rs1.getString(6);
											
						%>
						<br/><br/><br/>
						
						<table border="1" width="100%" >
							<tr>
								<td colspan="2">
								    <%= question %>
									<br/><br/>
								</td>
							</tr>
							<tr>
								<td>
								    <input type="radio" name="option" value="1" onclick="ChangeColor();"> 
									</td><td>
									
									<%= option1 %><br/><br/>
								</td>
							</tr>
							<tr>
								<td>
								<input type="radio" name="option" value="2" onclick="ChangeColor();"> 
								</td><td>
								    <%= option2 %><br/><br/>
								</td>
							</tr>
							<tr>
								<td>
								<input type="radio" name="option" value="3" onclick="ChangeColor();">
								    </td><td>
									<%= option3 %><br/><br/>
								</td>
							</tr>
							<tr>
								<td>
								<input type="radio" name="option" value="4" onclick="ChangeColor();">
								</td><td>
								    <%= option4 %><br/><br/>
								</td>
							</tr>
							
						</table>
					<%
						}
						
						rs1.close();
						cn1.close();
					%>
					<center>
					
        <table width="30%">
			<tr>
				<td>
				                <input name="submit" type="submit"  value="Next"  style="width: 70px;height: 30px;" class="myButton" >
				</td>
			</tr>
		</table>

		        
		
		
		 
		 
		 </center>
					
		   </form>
</div>
</tr>
</table>
<table width="25%">
	<tr>			
		</td>
		<td width="25%">
		<form action="result3.jsp" method="post" name="f1" >
                
				                
							<table border="1" align="center" cellspacing="1px" cellpadding="1px"  style="overflow:scroll;"  >
							<tr>
							<%
							Class.forName("org.gjt.mm.mysql.Driver");
							Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz1","","");
							Statement st=cn.createStatement();
							ResultSet rs=st.executeQuery("select count(*) from tblsetquestionpaper");							
							//int currentquestion=Integer.parseInt(session.getAttribute("QN").toString());
							//int select=currentquestion;
							if( rs.next())
							{
								int n=rs.getInt(1);
								System.out.println("-------------->"+n);
								for(int i=0;i<n;i=i)
								{
								
								//for column-1
									if(i<n)
									{
										%>
											<%
									}
									else
									{
									%>
									<td width="50px" ><span  align="center"><a href="#" id="link"><%=++i%></a></span></td>
                                    <%
									
									}
									//for column-2
									
									if(i<n)
									{
										%>
										<td width="50px" ><span  id="rad" align="center"><a href="#" id="link"><%=++i%></a></span></td>
                                    	<%
									}
									else
									{
									%>
									<td width="50px" ><span  align="center"><a href="#" id="link"><%=++i%></a></span></td>
                                    <%
									
									}
									if(i<n)
									{
										%>
										<td width="50px"><span  id="rad1" align="center"><a href="#" ><%=++i%></a></span></td>
                                    	<%
									}
									else
									{
									%>
									<td width="50px"><span align="center"><a href="#" id="link"><%=++i%></a></span></td>
                                    <%
									
									}
									if(i<n)
									{
										%>
										<td width="50px"><span  id="rad1" align="center"><a href="#" id="link"><%=++i%></a></span></td>
                                    	<%
									}
									else
									{
									%>
									<td width="50px"><span  id="rad1" align="center"><a href="#" id="link"><%=++i%></a></span></td>
                                    <%
									
									}
									if(i<n)
									{
										%>
										<td width="50px"><span  id="rad1" align="center"><a href="#" id="link"><%=++i%></a></span></td></tr>
                                    	<%
									}
									else
									{
									%>
									<td width="50px" ><span  id="rad1" align="center"><a href="#" id="link"><%=++i%></a></span></td></tr>
                                    <%
									
									}	
							
							}
							}
							rs.close();
							cn.close();
							
						%>
						    </table>
									<input type="submit" value="Submit" 	>
							
							<br />
							</form>

		</td>
	</tr>
</table>	
		
	<jsp:include page="/design/last.txt"/>
    </body>
</html>
