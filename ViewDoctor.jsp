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
<head><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" /><meta name="description" /><meta name="author" /><title>
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
                
    
   
    <!-- Bootstrap Modal Dialog -->


    <div class="h3">View Doctor's Profile Details</div>
   								
   
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title panel-primary">Welcome</h3>
        </div> 
    
        <div class="panel-body">
            <div class="col-md-12">
                
               <div class="aaa">
               
    
				</div>
 <div class="table-bordered">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-10">
<form action="doc" method="post"> <input type="hidden" name="t"  readonly="readonly" value="viewdoc">
	<input type="hidden" name="email"  readonly="readonly" value="<%=session.getAttribute("email")%>">
	<input type="submit" value="Show Details">
</form>
  	
  	<c:forEach items="${listDoctor}" var="t">
	<!-- <tr><td>Doctor ID</td><td><input type="text" name="userid" id="userid" readonly="readonly" value=""></td>
</tr> -->
<table class="table table-striped table-bordered table-hover" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">
	
<tr><td><strong>First Name</strong></td><td>${t.fname}</td>
<td><strong>last Name</strong></td><td>${t.lname}</td></tr>

<tr><td><strong>Email</strong></td><td>${t.email}</td>
<td><strong>Date Of Birth</strong></td><td>${t.dob}</td></tr>
<tr><td><strong>Mobile</strong></td><td>${t.mobile}</td>
<td><strong>Aadhar Number</strong></td><td>${t.aadharnum}</td></tr>
<tr><td><strong>Clinic Address</strong></td><td>${t.address}</td>
<td><strong>Highest Qualification</strong></td><td>${t.hiqualification}</td></tr>
<tr><td><strong>University</strong></td><td>${t.university}</td>
<td><strong>Passing year</strong></td><td>${t.passyear}</td></tr>
<tr><td><strong>Percentage</strong></td><td>${t.percentage}</td>
<tr><td><strong>City</strong></td><td>${t.city}</td><td><strong>Address</strong></td><td>${t.address}</td>
<tr><td><strong>State</strong></td><td>${t.state}</td><td><strong>Pin Code</strong></td><td>${t.pincode} </td>
</tr> 
<tr><td></table>


</c:forEach>
	</table>
	
</center>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

    <script src="js/material.js"></script>
    <script src="js/ripples.min.js"></script>
    

    <script>
        $.material.init();
    </script>
    
</body>
</html>
