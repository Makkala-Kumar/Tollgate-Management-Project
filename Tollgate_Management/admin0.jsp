<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Company Name</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function validation()
{
var a=document.f.n.value;

if(a=="")
{
alert("Enter UserName!");
document.f.n.focus();
return false;
}

var b=document.f.p.value;

if(b=="")
{
alert("Enter password!");
document.f.p.focus();
return false;
}
}


</script>
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
		<li><a href="#">Admin Login</a>&nbsp; </li>
      </ul>
    </div>
  </div>
  <div id="quickintro"> 
    <div id="quickSummary"> 
	
    </div>
  </div>
 <table><td width="330"></td><td><form name="f" action="admin1.jsp" onSubmit="return validation()">
<table cellpadding="0" cellspacing="0">
</table>
<table cellpadding="0" cellspacing="0">
<tr>
<td valign="top"><br><br>
<table align="center">
<tr>
<td width="400" class="userlogin" align="center" background="images/bg_thead.gif">Admin Login Here</td>
</tr>
</table>
<table border="0" cellspacing="5" cellpadding="5" align="center" style="border: 1px #A0A0A0 solid;" bgcolor="#FFFFFF">
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserName:</td>
<td ><input type="text"  name="n"></td>
</tr>
<tr>
<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:</td>
<td ><input type="password" name="p"></td>
</tr>
<tr>
<td ></td>
<td ><input type="submit" name="su"  value="Login">
&nbsp;&nbsp;&nbsp;<input name="reset"  type="reset"  value="Clear">
</td>
</tr>	
</table>
</td>
</tr>
</table>
<table align="center" >
<br>
<br>
<br>
<br>
<br>
<br>




</table>

</form></td></table>

</body>
</html> 



