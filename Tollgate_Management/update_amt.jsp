<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Company Name</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="container"> 
  <h1>TollGate Management</h1>
  <div id="intro"> 
    <div id="pageHeader"> 
      <h1><span></span></h1>
    </div>
    <div id="lmenu"> 
      <ul>
        <li><a href="index.html">Home</a>&nbsp; </li>
        <li><a href="admin0.jsp">Admin Login</a>&nbsp; </li>
      </ul>
    </div>
  </div>
  <div id="quickintro"> 
    <div id="quickSummary"></div>
  </div>
 
  <table>
    <td width="200"></td>
    <td><form name="s" action="update_amt1.jsp" onSubmit="return validation()">
        <table align="center" border="2" width="100" height="100" bgcolor="#99FFFF">
          <h1>Update Amount</h1>
          <tr> 
            <th><font color="#CC0000">TYPE OF VEHICLE</font></th>
            <th><font color="#CC0000">AMOUNT</font></th>
            <th><font color="#CC0000">UPDATE</font></th>
          </tr>
          <%
	String a=null,b=null,c=null;
	try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select type,amt from admin_amt");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
a=rs.getString(1);
b=rs.getString(2);
%>
          <tr> 
            <td><%=a%></td>
            <td><%=b%></td>
            <td><a href="update_amt1.jsp?<%=a%>">Update</a></td>
          </tr>
          <%
}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
        </table>
      </form></td>
  </table>
  
  <br>
    <br>
	  <br>
	    <br>
		 
</div>
</div>
</body>
</html>
