<%@page import="java.util.Date"%>
<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

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
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Vipul Kumar" />
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
<form action="AController" method="post"> <input type="hidden" name="t"  readonly="readonly" value="viewappointmentbydate">
<input type="date" name="adate">
	<input type="hidden" name="did"  readonly="readonly" value="<%=session.getAttribute("did")%>">
	<input type="submit" value="Show appointments">
</form>

<form action="AController" method="post"> <input type="hidden" name="t"  readonly="readonly" value="viewappointmentbydate">

<%DateFormat d= new SimpleDateFormat("yyyy-MM-dd");
Date dat=new Date();
String pdate=request.getParameter("adate");
String adate= d.format(dat);
%>
<input type="date" name="adate" value="<%=adate%>">
	<input type="hidden" name="did"  readonly="readonly" value="<%=session.getAttribute("did")%>">
	<input type="submit" value="Show Today's Appointment">
</form>
  	
 
<table class="table table-striped table-bordered table-hover" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">
	<c:forEach items="${appointmentlist}" var="t">
		
<tr><td>Child Name</td><td>Date</td><td>Age</td><td>Mobile</td><td>Parent Name</td></tr>
<tr><td>${t.cname}</td><td>${t.adate}</td><td>${t.age}</td><td>${t.mobile}</td><td>${t.pname}</td>
<td><a href="AController?id=${t.id }&pemail=${t.email }&adate=<%=pdate %>&t=appointment&status=1">CONFIRM</a></td>
<td><a href="AController?id=${t.id }&pemail=${t.email }&adate=<%=pdate %>&t=appointment&status=2">REJECT</a></td></tr> 
</table>


</c:forEach>
	</table>

	<br><br>
</center>
</div>
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
