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
        <li><a href="admin0.jsp">Admin Login</a>&nbsp;</li>
      </ul>
    </div>
  </div>
  <div id="quickintro"> 
    <div id="quickSummary"> </div>
  </div>
  
      <script>
function printpage()
{
window.print();
}
</script>
<form>
    <table>
      <td width="350"></td>
      <td><table border="1" bgcolor="#E2E2E2">
          <h1><font color="#0066CC">YEARLY REPORT</font></h1>
          <tr> 
            <th><font color="#FF0000">JOURNY TYPE</font></th>
            <th><font color="#FF0000">AMOUNT</font></th>
            <th><font color="#FF0000">FROM DATE</font></th>
            <th><font color="#FF0000">VEHICLE NO</font></th>
            <th><font color="#FF0000">ADDRESS</font></th>
            <th><font color="#FF0000">TYPE OF VEHICLE</font></th>
            <th><font color="#FF0000">NAME</font></th>
          </tr>
          <% 

	
	String y = request.getParameter("year");
	String date = "-"+y;

	String a=null,b=null,c=null,d=null,e=null,g=null,h=null;
	System.out.print(date);

try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select journytype,amount,from_date,vechile_no,address,type,name from light where from_date like '%"+date+"%'");
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
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
  
%>
        
    
   
      </table></td>
	   </table>
  
  <table>
    <td width="300"></td>
    <td><table>
        <input type="button" value="Print this page" onclick="printpage();">
      </table></td>
  </table>
  </form>
  <div id="footer"> 
    
  </div>

</div>
</div>
</body>
</html>



