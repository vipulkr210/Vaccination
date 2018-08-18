<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
		<%=application.getInitParameter("collegename") %>
</title><link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/metisMenu.min.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/metisMenu.min.js"></script>
    <script src="js/sb-admin-2.js"></script>
    <script src="js/ERPPopUp.js"></script>
<link rel="stylesheet" href="style.css" type="text/css" media="print" />
    <script src="js/validations.js"></script>
  	<link href="css/bootstrap-material-design.css" rel="stylesheet" />
	<link href="css/ripples.min.css" rel="stylesheet" />
	<link href="css/sb-admin-2.css" rel="stylesheet" />
   
</head>
<body>
        <!-- Navigation -->
        <div id="wrapper">

            <!-- Navigation -->
        
        <jsp:include page="nav.jsp"></jsp:include>
<div id="page-wrapper">
 <div class="h3">View Parent's Profile Details</div>
 <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title panel-primary">Welcome</h3>
        </div> 
    
        <div class="panel-body">
            <div class="col-md-12">

 <div class="table-bordered">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-10">
<form action="parent"> <table class="table table-striped table-bordered table-hover" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">
	<input type="hidden" name="t"  readonly="readonly" value="viewpar"><input type="submit" value="Show Details">
</form>
  	
  	<c:forEach items="${list}" var="t">
	<!-- <tr><td>Doctor ID</td><td><input type="text" name="userid" id="userid" readonly="readonly" value=""></td>
</tr> -->

<% %>
<tr><td><strong>Father Name</strong></td><td>${t.pName}</td>
<td><strong>Mother Name</strong></td><td>${t.mName}</td></tr>

<tr><td><strong>Email</strong></td><td>${t.email}</td>
<td><strong>Date Of Birth (Child)</strong></td><td>${t.dob}</td></tr>
<tr><td><strong>Mobile</strong></td><td>${t.mobile}</td>
<td><strong>Child's Name</strong></td><td>${t.cName}</td></tr>

<tr><td><strong>City</strong></td><td>${t.city}</td><td><strong>Address</strong></td><td>${t.address}</td>
<tr><td><strong>State</strong></td><td>${t.state}</td><td><strong>Pin Code</strong></td><td>${t.pincode} </td>
</tr>
<tr><td>

<a href="ViewParent.jsp?day=${t.day}&month=${t.month}&year=${t.year}&dateofbirth=${t.dob}">View Date of Birth Details</a>
</c:forEach>
	</table>
	<br><br>
</center>
 
<% Period p=null;
LocalDate today=null; int total=0;
int da=0,mo=0,ye=0;
String day=request.getParameter("day");
String dateofbirth=request.getParameter("dateofbirth");
String month=request.getParameter("month");
String year=request.getParameter("year");
if(day!=null && month!=null && year!=null){
	today=LocalDate.now();
	  ye=Integer.parseInt(year);
	  da=Integer.parseInt(day);
	  mo=Integer.parseInt(month);
LocalDate birthday=LocalDate.of(ye,mo,da);
 p=Period.between(birthday, today);
int s=Integer.parseInt(year);
total=p.getDays()+p.getMonths()*30+p.getYears()*365;
 LocalDate ld=birthday.plus(6,ChronoUnit.WEEKS);
%>
<table class="table table-striped table-bordered table-hover"  border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">
<tr><td>Date of Birth</td><td><%=dateofbirth %></td></tr>
<tr><td>Days Count</td><td><%=p.getDays() %></td></tr>
<tr><td>Month Count</td><td><%=p.getMonths() %></td></tr>
<tr><td>Year Count</td><td><%=p.getYears() %></td></tr>
<tr><td>Weeks </td><td><%=total/7 %></td></tr>
<tr><td>Next Date</td><td><%=ld %></td></tr>
</table>
<%
}
%></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
 <script type="text/javascript">
 </script>


    

    <script src="js/material.js"></script>
    <script src="js/ripples.min.js"></script>
    

    <script>
        $.material.init();
    </script>
    
</body>
</html>
