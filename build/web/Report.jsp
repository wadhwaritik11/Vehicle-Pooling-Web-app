<%@page import = "java.sql.*"%>
<%@page import="Dao.DBCon"%> 

<html >
<head>
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <title>RideShare</title>
  <link href="css/style.css" rel="stylesheet" type="text/css">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="1_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
 <script>
 function validate(formobj)
 {
if(formobj.eid.value.length==0){
alert("This field should not be kept empty");
formobj.eid.focus();
return false;
}
if(formobj.email.value.length==0){
alert("This field should not be kept empty");
formobj.email.focus();
return false;
}
if(formobj.report.value.length==0){
alert("This field should not be kept empty");
formobj.report.focus();
return false;
}
 }

 </script>
</head>
<body>
<div id="main-wraper">
<div id="top-wraper">
<div id="banner">Vehicle Pooling<br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCall: 000-000000</div>
<div id="nav">
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="index.jsp" style="height:18px;line-height:18px;">AdminPage</a></li>
	<li class="topmenu"><a href="details.jsp" style="height:18px;line-height:18px;">EnterEmployeeDetails</a></li>
	<li class="topmenu"><a href="Services.jsp" style="height:18px;line-height:18px;">Services</a></li>
    <li class="topmenu"><a href="vemp.jsp" style="height:18px;line-height:18px;">Employees</a></li>
	<li class="toplast"><a href="Report.jsp" style="height:18px;line-height:18px;">Reports</a></li>
</ul>
</div>
</div>
<div id="mid-wraper">
<div id="mid-wraper-inner">
<div id="left-wraper">
<div id="left-wraper-top">
<div
 style="margin: 0px; padding: 20px; width: 256px; float: left; display: block;">
<h1>Categories</h1>
</div>
<ul>
  <li><a href="index.jsp">Admin</a></li>
</ul>
</div>
<div id="news">
<h3>News</h3>
<img src="images/carpools1.jpg" width=255 height=190 alt="">
<div style="width: 270px; float: left; padding-top: 10px;"> <strong>VehiclePooling</strong>
Vehiclepools has also developed an advanced, secure carpooling system for corporations to provide for their staff. <br><br>The corporate system calculates and reports savings of fuel and emissions and the trips avoided by an organizations staff. 
<br>
<a href="#" class="link" style="float: right;">read more</a> </div>
</div>
</div>
<div id="right-wraper">
<div class="right-part">
<h1>Welcome to <span class="blue-text">Vehicle Pooling<a href="home.jsp" style="float:right"><strong>LogOut<strong></a></span></h1>
<img src="images/welcome-brd.jpg" alt="">
<div style="padding: 10px 0px; width: 596px; float: left;"><br>
<center>
<jsp:include page="ReportServlet"/>
</center>
<form name="form1" action="ReportInsert.jsp" method="post" onSubmit="return validate(this)">
<table align="center">
<tr><td>Enter EID:</td><td><input type="text" name="eid"/></td></tr>
<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>Enter Text:</td><td><textarea  name="Report" style="height:50px;overflow:scroll"></textarea></td></tr>
<tr colspan="2" align="center"><td><input type="submit"value="Submit"/></td></tr>
</table>
</form>

<br>
</div>
</body>
</html>
