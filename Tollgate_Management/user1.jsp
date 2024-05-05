<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />

</head>


<body>
<body>
<%
String a=request.getParameter("name");
String b=request.getParameter("pass");
session.setAttribute("s",a);
session.setAttribute("r",b);
String v1=null;
String v2=null;
String na=null;
String tv=null;
String add=null;
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select * from newuser where name='"+a+"' AND password='"+b+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
na=rs.getString("yourname");
add=rs.getString("address");

v1=rs.getString("regstate");
v2=rs.getString("vehicleno");
String vno=v1+v2;

session.setAttribute("vno",vno);

session.setAttribute("na1",na);

session.setAttribute("add1",add);


response.sendRedirect("user2.jsp");
}
else
{
out.print("Enter correct name and password !!!!!!");
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
</body>
</html>
