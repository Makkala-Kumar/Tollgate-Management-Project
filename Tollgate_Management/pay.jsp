<%@ page import="java.sql.*,java.io.*"  %>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body>
<%


String a=request.getParameter("j");
String b=request.getParameter("name");
String c=request.getParameter("vn");
String d=request.getParameter("tv");
String e=request.getParameter("add");

String amt=null;


try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("select amt from admin_amt where type='"+d+"'");
ResultSet rs1=ps1.executeQuery();
if(rs1.next())
{
amt=rs1.getString(1);
}

}
catch(Exception e3)
{
out.println(e3.getMessage());
}
int t_amt = Integer.parseInt(amt);



if(a.equals("singlejourny"))
{
t_amt=t_amt;
}
else if(a.equals("doublejourny"))
{
t_amt=t_amt*2;
}
else if(a.equals("onedaypass"))
{
t_amt=t_amt*3;
}
else
{
t_amt=t_amt*10;
}
//out.print(a);
//out.print(b);
//out.print(c);
//out.print(d);
//out.print(e);
//out.print(t_amt);
/*

*/

SimpleDateFormat formatter=new SimpleDateFormat("dd-MM-yyyy");
Calendar cal = Calendar.getInstance();

String dateNow = formatter.format(cal.getTime());
String r=null; 
//Calendar cal1 = Calendar.getInstance();
if(a.equals("singlejourny"))
{

r=(formatter.format(cal.getTime()));

}

else if(a.equals("doublejourny"))
{


    cal.setTime(formatter.parse(dateNow)); // sets calendar time/date
    cal.add(Calendar.HOUR_OF_DAY, 24); // adds one hour
 
r=(formatter.format(cal.getTime()));
}
else if(a.equals("onedaypass"))
{


    cal.setTime(formatter.parse(dateNow)); // sets calendar time/date
    cal.add(Calendar.HOUR_OF_DAY, 24); // adds one hour
 
r=(formatter.format(cal.getTime()));
}
else
{

cal.setTime(formatter.parse(dateNow)); // sets calendar time/date
    cal.add(Calendar.DATE, 30); // adds one hour
   
r=(formatter.format(cal.getTime()));
}
//out.print(r);

try
{

Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("insert into light(journytype,amount,from_date,to_date,vechile_no,name,address,type) values(?,?,?,?,?,?,?,?)");
ps.setString(1,a);
ps.setInt(2,t_amt);
ps.setString(3,dateNow);
ps.setString(4,r);
ps.setString(5,c);
ps.setString(6,b);
ps.setString(7,e);
ps.setString(8,d);
ps.executeUpdate();

session.setAttribute("a",a);
session.setAttribute("t_amt",t_amt);
session.setAttribute("r",r);
session.setAttribute("c",c);
session.setAttribute("b",b);
session.setAttribute("e",e);
session.setAttribute("dateNow",dateNow);
session.setAttribute("d",d);
response.sendRedirect("successfullystor.jsp");



}
catch(Exception e4)
{
out.println(e4.getMessage());
}

%>
</body>
</html>
