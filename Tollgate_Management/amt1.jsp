<%@ page import="java.sql.*,databaseconnection.*"%>
<%
String a=request.getParameter("sj");

String b=request.getParameter("amt");
try
{

Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into admin_amt(type,amt) values(?,?)");
ps.setString(1,a);
ps.setString(2,b);
ps.executeUpdate();

response.sendRedirect("databasesaved1.jsp?success");



}
catch(Exception e)
{
out.println(e.getMessage());
}
%>