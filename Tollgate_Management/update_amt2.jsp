<%@ page import="java.sql.*,databaseconnection.*"%>
<%
String a=request.getParameter("type");
String b=request.getParameter("amt");


try
{

Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("update admin_amt set type='"+a+"',amt='"+b+"' where type='"+a+"'");

ps.executeUpdate();

response.sendRedirect("databasesaved1.jsp?success");



}
catch(Exception e)
{
out.println(e.getMessage());
}
%>