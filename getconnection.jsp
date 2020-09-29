
        <%@page import="java.sql.*" %>
    <%
        Class.forName("org.gjt.mm.mysql.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/docto","root","root");
        Class.forName("org.gjt.mm.mysql.Driver");
    
	       Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/docto","root","root");

           Statement st=con.createStatement();
           Statement st1=con.createStatement();
           Statement st2=con.createStatement();
           Statement st3=con.createStatement();
           
		   ResultSet rs=null;
%>

