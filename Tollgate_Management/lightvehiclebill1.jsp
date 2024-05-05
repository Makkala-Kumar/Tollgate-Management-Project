<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body>
<%


String b=request.getParameter("s");
String timeStamp = new SimpleDateFormat("dd-MM-yyyy").format(Calendar.getInstance().getTime());
String journy=null,amt=null;
String temp[]=null;
temp=b.split(",",2);
for(int i=0; i<temp.length; i++)
{
journy=temp[0];
amt=temp[1];
}

try
{

Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into light(journytype,amount,datetime) values(?,?,'"+timeStamp+"')");
ps.setString(1,journy);
ps.setString(2,amt);
ps.executeUpdate();

response.sendRedirect("customerindidetails.jsp");



}
catch(Exception e)
{
out.println(e.getMessage());
}


%>
</body>
</html>
