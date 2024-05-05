<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
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
  
    <%
  String na=(String)session.getAttribute("na1");
  %>
   <marquee><div id="quickSummary"><font color="#000000"><b>welcome:</b></font> <font color="#FF3333"><b><%=na%></b></font></div></marquee>
  
  </div>
  <div id="development"> 
    <h3><span></span></h3>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div id="s1"> <a href="viewuserprofile.jsp"><font color="#FF0000" size="+2">View 
      your profile</font></a><br>
      <a href="lightvehiclebill0.jsp"><font color="#FF0000" size="+2">Gate Pass 
      Booking</font></a> </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>
  <div id="footer"> 
    
  </div>
</div>
</div>
</body>
</html>





