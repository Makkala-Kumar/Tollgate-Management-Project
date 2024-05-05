<%@ page import="java.sql.*,databaseconnection.*"%>
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Company Name</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function validation(){
   if ( ( document.f.j[0].checked == false ) && ( document.f.j[1].checked == false )&& ( document.f.j[2].checked == false ) && ( document.f.j[3].checked == false )){
        alert ( "Please choose juorny!" );
        document.f.j[0].focus();
        return false;
    }
return true;
}
</script>


</head>
<body>
<%
String vno1=(String)session.getAttribute("vno");
String na=(String)session.getAttribute("na1");
String add=(String)session.getAttribute("add1");


%>

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
  <div id="development"> 
    <h3><span></span></h3>
    <p class="p1"> 
      <%
	String b=request.getQueryString();
	
	%>
    <h1><font color="#FF0000"></font></h1><body>
    <table>
      <td width="250"></td>
      <td><h2 class="title"><font size="+1" color="red">Gate Pass Registration</h2></td>
    </table>
    <table>
      <td width="100"></td>
      <td><form name="f" action="pay.jsp" onsubmit="return validation()">
          <TABLE bgcolor="#CCFFFF" cellpadding="10">
            <tr> 
              <th >SELECT THE JOURNY</th>
              <td> <input type="radio" name="j" value="singlejourny">
                Single 
                <input type="radio" name="j" value="doublejourny">
                Return 
                <input type="radio" name="j" value="onedaypass">
                daily 
                <input type="radio" name="j" value="monthlypass">
                Monthly Pass </td>
            </tr>
            <tr> 
              <th>YOUR NAME</th>
              <td><input name="name" value="<%=na%>"></td>
            </tr>
            <tr> 
              <th>YOUR VEHICLE NO</th>
              <td><input name="vn" value="<%=vno1%>"></td>
            </tr>
            <tr> 
              <th>TYPE OF VEHICLE</th>
              <td><input name="tv" value="<%=b%>"></td>
            </tr>
            <tr> 
              <th>ADDRESS</th>
              <td><input name="add" value="<%=add%>"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="sub" value="SAVE" > <input type="reset" name="re" value="CLEAR"></td>
            </tr>
          </table>
        </form></td>
    </table>
    <p class="p2"> </p>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <div id="footer"> </div>
</div>
</div>
</body>
</html>





