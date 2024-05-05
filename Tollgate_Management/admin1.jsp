<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body>


<%
String a=request.getParameter("n");
String b=request.getParameter("p");
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select name,password from admin where name='"+a+"' AND password='"+b+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect("databasesaved1.jsp");
}
else
{
out.print("Enter correct name and password !!!!!!!");
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>


</body>
</html>
