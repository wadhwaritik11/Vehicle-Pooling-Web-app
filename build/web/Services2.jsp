<%@page import="Dao.DBCon"%>
<%@page import="java.sql.*"%>

<html>
<head>
  <meta http-equiv="Content-Type"
 content="text/html; charset=iso-8859-1">
  <title>RideShare</title>
  <link href="css/style.css" rel="stylesheet" type="text/css">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="1_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
  
</head>
<body>
<div id="main-wraper">
<div id="top-wraper">
<div id="banner">Vehicle Pooling<br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCall: 000-000000</div>
<div id="nav">
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="emp.jsp" style="height:18px;line-height:18px;">EmpPage</a></li>
	<li class="topmenu"><a href="Services1.jsp" style="height:18px;line-height:18px;">ViewServices</a></li>
	<li class="toplast"><a href="Report1.jsp" style="height:18px;line-height:18px;">Reports</a></li>
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
  <li><a href="emp.jsp">Employee</a></li>
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
<h1>Welcome to <span class="blue-text">Vehicle Pooling</span></h1><a href="home.jsp" style="float:right"><strong>LogOut<strong></a>
<img src="images/welcome-brd.jpg" alt="">
<div style="padding: 10px 0px; width: 596px; float: left;"><br>
<br>
<%!
String fname,lname;
%>
<%
try{
      Connection conn=DBCon.getConnection();
	  Statement st=conn.createStatement();
	  ResultSet rs=st.executeQuery("select * from services");
      ResultSetMetaData rmd=rs.getMetaData();
		    %><h1><center><FONT SIZE="5" COLOR="#990033"><B>Services</B></FONT></center></h1>
				   <center><table border="1">
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">EID</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">Ename</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">Dept</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">email</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">contact</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">Adress</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">root from</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">root to</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">timings</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">Driver</FONT></th>
				   <th height="50" width="50"><FONT SIZE="4" COLOR="violet">Persons</FONT></th>
                   <%
				   while(rs.next())
					{%><tr height="50"width="50">
					<%for(int i=1;i<=rmd.getColumnCount();i++)
					   {%><%if(i==11){%><td></td>
					   <%}else{%>
					<td><%=rs.getString(i)%></td>
					<%}}
				   %></tr>
				   <%}
				   %></table></center>
				   <%
   
}catch(Exception e)
{
out.println(e);
}
%>
<br>
</div>
</body>
</html>
