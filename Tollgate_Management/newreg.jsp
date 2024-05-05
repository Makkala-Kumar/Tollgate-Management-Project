<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Company Name</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function validation()
{

var a=document.f.name.value;
if(a=="")
{
alert("Enter your Username!");
document.f.name.focus();
return false;
}


var b=document.f.pass.value;
if(b=="")
{
alert("Enter your passsword!");
document.f.pass.focus();
return false;
}


var c=document.f.yn.value;
if(c=="")
{
alert("Enter your Name!");
document.f.yn.focus();
return false;
}

var d=document.f.ca.value;
if (d==null||d=="")
  {
  alert("Plese Select the registration state");
  document.f.ca.focus();
  return false;
  }


var e=document.f.vn.value;
if(e=="")
{
alert("Enter your Vehicle No!");
document.f.vn.focus();
return false;
}




var g = document.f.pn.value;
if(g=="")
{
alert("please Enter the Contact Number");
document.f.pn.focus();
return false;
}
if(isNaN(g))
{
alert("Enter the valid Mobile Number(Like : 9789534737)");
document.f.pn.focus();
return false;
}
if(g.length != 10) 
{
alert(" Your Mobile Number must be 1 to 10 Integers");
document.f.pn.select();
return false;
}



var h=document.forms["f"]["eid"].value;
var atpos=h.indexOf("@");
var dotpos=h.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=h.length)
  {
  alert("Not a valid e-mail address");
  document.f.eid.focus();
  return false;
  }

var i=document.f.add.value;
if(i=="")
{
alert("Enter your Address!");
document.f.add.focus();
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
        <li><a href="contact.jsp">Contacts</a>&nbsp;</li>
      </ul>
    </div>
  </div>
  <div id="quickintro"> 
    <div id="quickSummary"> </div>
  </div>
  <div id="development"> 
    <form name="f" action="userinsert.jsp" onsubmit="return validation()">
      <table>
        <td width="300"></td><td>
        <table bgcolor="#FFFFFF">
          <h1><font color="#FF0000">New Registration Form</font></h1></font></td>
          <tr> 
            <th>Username</th>
            <td><input type="text" name="name"> </td>
          </tr>
          <tr> 
            <th>Password</th>
            <td><input type="password" name="pass"> </td>
          </tr>
          <tr> 
            <th>Your Name</th>
            <td><input type="text" name="yn"> </td>
          </tr>
          <tr> 
            <th>Vehicle No</th>
            <td><select name="ca">
                <option value="">-----</option>
                <option value="TN">TN</option>
                <option value="KE">KE</option>
                <option value="AP">AP</option>
                <option value="AR">AR</option>
                <option value="AS">AS</option>
                <option value="BR">BR</option>
                <option value="CG">CG</option>
                <option value="DL">DL</option>
                <option value="GA">GA</option>
                <option value="GJ">GJ</option>
                <option value="HR">HR</option>
                <option value="HP">HP</option>
                <option value="JK">JK</option>
                <option value="JS">JS</option>
                <option value="KA">KA</option>
                <option value="KL">KL</option>
                <option value="MP">MP</option>
                <option value="MH">MH</option>
                <option value="MN">MN</option>
                <option value="ML">ML</option>
                <option value="MZ">MZ</option>
                <option value="NL">NL</option>
                <option value="OR">OR</option>
                <option value="PB">PB</option>
                <option value="RJ">RJ</option>
                <option value="SK">SK</option>
                <option value="UP">UP</option>
                <option value="WB">WB</option>
                <option value="AN">AN</option>
                <option value="CH">CH</option>
                <option value="DN">DN</option>
                <option value="DD">DD</option>
                <option value="LD">LD</option>
                <option value="PY">PY</option>
              </select> <input type="text" name="vn"></td>
          </tr>
          <tr> 
            <th>Phone No</th>
            <td><input type="text" name="pn"> </td>
          </tr>
          <tr> 
            <th>Email Id</th>
            <td><input type="text" name="eid"> </td>
          </tr>
          <tr> 
            <th>Address</th>
            <td><textarea rows="4" cols="40" name="add"></textarea></td>
          </tr>
          <tr> 
            <td></td>
            <td><input type="submit" name="su" value="submit"> <input type="reset" name="re" value="clear"></td>
          </tr>
        </table></td>
      </table>
    </form>
    <br>
    <br>
    <br>
  </div>
  <div id="footer"> </div>
</div>
</div>
</body>
</html>

