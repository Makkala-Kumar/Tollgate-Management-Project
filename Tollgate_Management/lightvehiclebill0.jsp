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
        <li><a href="contact.jsp">Contacts</a>&nbsp;</li>
      </ul>
    </div>
  </div>
  <div id="quickintro"> 
    <div id="quickSummary"> </div>
  </div>
  <%
String a="lightvehicle";
String b="lightcommercial_vehicle";
String c="medium_vehicle";
String d="large_vehicle";
String e="extralarge_vehicle";

  %>
  <div id="development"> 
    <h3><span></span></h3>
    <p class="p1"> 
    <h2><font size="+1" color="red">PLESE SELECT THE VEHICLE TYPE</h2>
    <table align="center" bgcolor="#000000">
      <tr> 
        <td> TWO WHEELERS <a href="twowheelers.jsp"><img border="2" SRC="images/two.jpg" alt="Pulpit rock" width="263" height="191"></a></td>
        <td> LIGHT VEHICLES <a href="lightvehiclebill.jsp?<%=a%>"><img border="2" SRC="images/light.jpg" alt="Pulpit rock" width="263" height="191"></a></td>
      </tr>
      <tr> 
        <td>LIGHT COMMERCIAL VEHICLES <a href="lightvehiclebill.jsp?<%=b%>"><img border="2" SRC="images/lightcomm.jpg" alt="Pulpit rock" width="263" height="191"></a></td>
        <td>MEDIUM VEHICLES <a href="lightvehiclebill.jsp?<%=c%>"><img border="2" SRC="images/medium.jpg" alt="Pulpit rock" width="263" height="191"></a></td>
      </tr>
      <tr> 
        <td>LARGE VEHICLES <a href="lightvehiclebill.jsp?<%=d%>"><img border="2" SRC="images/large.jpg" alt="Pulpit rock" width="263" height="191"></a></td>
        <td>EXTRA LARGE VEHICLES <a href="lightvehiclebill.jsp?<%=e%>"><img border="2" SRC="images/extralarge.jpg" alt="Pulpit rock" width="263" height="191"></a></td>
      </tr>
    </table>
  </div>
  <div id="footer"> </div>
</div>
</div>
</body>
</html>



