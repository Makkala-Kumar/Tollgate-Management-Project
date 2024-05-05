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
<script>
function printpage()
{
window.print();
}
</script>

<%
String a=(String)session.getAttribute("a");
Integer t_amt=(Integer)session.getAttribute("t_amt");
String dateNow=(String)session.getAttribute("dateNow");
String r=(String)session.getAttribute("r");
String c=(String)session.getAttribute("c");
String b=(String)session.getAttribute("b");
String e=(String)session.getAttribute("e");
String d=(String)session.getAttribute("d");


%>

<br>
<table><td width="200"></td>
<td><table border="2"  bgcolor="#99FFFF" width="300" height="252">
	
	<h1><font size="+2">&nbsp;&nbsp;&nbsp;<font color="#FF0000">BILLING STATEMENT</font></font></h1>

	<tr>
	<td>Name</td>
	<td><%=b%></td>
	</tr>
	
	<tr>
	<td>amount</td>
	<td><%=t_amt%></td>
	</tr>
	
	<tr>
	<td>journy type</td>
	<td><%=a%></td>
	</tr>
	
	<tr>
	<td>from date</td>
	<td><%=dateNow%></td>
	</tr>
	
	<tr>
	<td>To date</td>
	<td><%=r%></td>
	</tr>
	
	<tr>
	<td>vehicle no</td>
	<td><%=c%></td>
	</tr>
	
	<tr>
	<td>type of vehicle</td>
	<td><%=d%></td>
	</tr>
	</table></td></table>
   <br>
   <br>
 <table><td width="270"></td>
 <td><table>
<input type="button" value="Print this page" onclick="printpage();"/>
</table></td></table>
 <div id="footer"></div>
</body>
</html>



