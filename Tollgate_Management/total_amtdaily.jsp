<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Company Name</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function validation()
	{
          if(document.f.day.selectedIndex==0)
		  {
			alert("select Day");
			return false;
		}
		if(document.f.month.selectedIndex==0)
		{
			alert("select Month");
			return false;
		}
		if(document.f.year.selectedIndex==0)
		{
			alert("select Year");
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
        <li><a href="admin0.jsp">Admin Login</a>&nbsp;</li>
      </ul>
    </div>
  </div>
  <div id="quickintro"> 
    <div id="quickSummary"> </div>
  </div>
  <div id="development"> 
    <h3><span></span></h3>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div style="position:absolute; right:300px; top:290px"> 
      <form name="f" method="post" action="total_amtdaily1.jsp" onSubmit="return validation()">
        <table border="0" cellspacing="15">
          <tr> 
            <td><font color="#0033FF">Select Day:</font></td>
            <td><select name="day">
                <option value="--Select Day--">------------Day----------</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>05</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>
              </select></td>
          </tr>
          <tr> 
            <td><font color="#0033FF">Select Month:</font></td>
            <td><select name="month">
                <option value="--Select Month--">-----------Month---------</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
                <option>05</option>
                <option>06</option>
                <option>07</option>
                <option>08</option>
                <option>09</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
              </select></td>
          </tr>
          <tr> 
            <td><font color="#0033FF">Select Year</font></td>
            <td><select name="year">
                <option value="--Select Year--">-----------Year-----------</option>
                <option>2010</option>
                <option>2011</option>
                <option>2012</option>
              </select></td>
          </tr>
          <tr> 
            <td></td>
            <td><input type="submit" name="sub" value="Submit"></td>
          </tr>
        </table>
      </form>
    </div>
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
