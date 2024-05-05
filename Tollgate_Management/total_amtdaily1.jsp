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
      <td width="100"></td>
      <td><table align="center" border="2" bgcolor="#E2E2E2">
          <h1><font color="#0033FF">DATE WISE</font></h1>
          <tr> 
            <td><font color="#FF0000">JOURNY TYPE</font></td>
            <td><font color="#FF0000">AMOUNT</font></td>
            <td><font color="#FF0000">FROM DATE</font></td>
            <td><font color="#FF0000">VEHICLE NO</font></td>
            <td><font color="#FF0000">ADDRESS</font></td>
            <td><font color="#FF0000">TYPE OF VEHICLE</font></td>
            <td><font color="#FF0000">NAME</font></td>
          </tr>
          <%
String da=request.getParameter("day");
String mo=request.getParameter("month");
String ye=request.getParameter("year");

String newdate = da+"-"+mo+"-"+ye;
//System.out.print(newdate);





String a=null,b=null,c=null,d=null,e=null,g=null,h=null;

try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select journytype,amount,from_date,vechile_no,address,type,name from light where from_date='"+newdate+"'");
//PreparedStatement ps=con.prepareStatement("select * from light" );
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
    <table>
      <td width="260" height="300"></td>
      <td><input type="button" value="Print this page" onclick="printpage();"/></td>
    </table>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>
  
</div>
</div>
</body>
</html>



