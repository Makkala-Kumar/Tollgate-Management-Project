<%@ page import="java.sql.*,databaseconnection.*"%>
<head>
<title>AdminView</title>
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
    <div id="quickSummary"> </div>
  </div>
  <div id="development"> 
    <h3><span></span></h3>
    <p class="p1"> 
      <script>
function printpage()
{
window.print();
}
</script>
    <table>
      <td width="250"></td>
      <td><table border="1" align="center" bgcolor="#E2E2E2">
	  <h1><font color="#0033FF">CUSTOMER DETAILS</font></h1>
          <tr> 
            <th><font color="#FF0000">UserName</font></th>
            <th><font color="#FF0000">YourName</font></th>
            <th><font color="#FF0000">Regstate</font></th>
            <th><font color="#FF0000">VehicleNo</font></th>
            <th><font color="#FF0000">PhoneNo</font></th>
            <th><font color="#FF0000">EmailId</font></th>
            <th><font color="#FF0000">Address</font></th>
          </tr>
          <%

String a=null,b=null,c=null,d=null,e=null,g=null,h=null;

try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select name,yourname,regstate,vehicleno,phoneno,emailid,address from newuser");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
a=rs.getString(1);
b=rs.getString(2);
c=rs.getString(3);
d=rs.getString(4);
e=rs.getString(5);
g=rs.getString(6);
h=rs.getString(7);
%>
          <tr> 
            <td><%=a%></td>
            <td><%=b%></td>
            <td><%=c%></td>
            <td><%=d%></td>
            <td><%=e%></td>
            <td><%=g%></td>
            <td><%=h%></td>
          </tr>
          <%
}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
        </table></td>
    </table>
    <br>
    <br>
    <br>
    <table>
      <td width="260"></td>
      <td><table align="center">
          <input type="button" value="Print this page" onclick="printpage();" />
        </table></td>
    </table>
  </div>
  <br>
  <div id="footer"> 
    
  </div>
</div>
</div>
</body>
</html>



