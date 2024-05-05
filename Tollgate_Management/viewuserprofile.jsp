<%@ page import="java.sql.*,databaseconnection.*"%>
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
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
        <li><a href="contact.jsp">Contacts</a>&nbsp;</li>
      </ul>
    </div>
  </div>
  <div id="quickintro"> 
    <div id="quickSummary"> </div>
  </div>
  <div id="s3"> 
    <h3><span></span></h3>
    <p class="p1"> 
    <h1><font color="#006666">VIEW YOUR PROFILE</font></h1>
    <table>
      <td width="250" height="250"></td>
      <td><table>
          <%

String a=null,b=null,c=null,d=null,e=null,g=null,h=null,i=null;
String m=(String)session.getAttribute("s");
String n=(String)session.getAttribute("r");
try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select name,password,yourname,regstate,vehicleno,phoneno,emailid,address from newuser where name='"+m+"' AND password='"+n+"'");
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
i=rs.getString(8);
%>
          <tr> 
            <th><font color="#0099FF">User Name:</font></th>
            <td><%=a%></td>
          </tr>
          <tr> 
            <th><font color="#0099FF">Password:</font></th>
            <td><%=b%></td>
          </tr>
          <tr> 
            <th><font color="#0099FF">Your Name:</font></th>
            <td><%=c%></td>
          </tr>
          <tr> 
            <th><font color="#0099FF">RegState:</font></th>
            <td><%=d%></td>
          </tr>
          <tr> 
            <th><font color="#0099FF">Vehicle No:</font></th>
            <td><%=e%></td>
          </tr>
          <tr> 
            <th><font color="#0099FF">PhoneNo:</font></th>
            <td><%=g%></td>
          </tr>
          <tr> 
            <th><font color="#0099FF">EmailId:</font></th>
            <td><%=h%></td>
          </tr>
          <tr> 
            <th><font color="#0099FF">Address:</font></th>
            <td><%=i%></td>
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
    <br></p>
    <p class="p2"> </p>
  </div>
  <div id="footer"> 
    
  </div>
</div>
</div>
</body>
</html>




