<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<%@page import="connection.JDBCConnection"%>
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


    <div class="h3">Doctor Dashboard</div>
   								
   
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title panel-primary">Patient List </h3>
        </div> 
    
        <div class="panel-body">
            <div class="col-md-12">
                
            
 <div class="table-bordered">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-10">
<form action="AController" method="post"> <input type="hidden" name="t"  readonly="readonly" value="viewPatient">
	<input type="hidden" name="dname"  readonly="readonly" value="<%=session.getAttribute("did")%>">
	<input type="submit" value="Show List">
</form>
  	

	
<table class="table table-striped table-bordered table-hover" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">

<tr><td><b>Child Name</td><td><b>Child Age</td><td><b>Parent Name</td>
<td><b>City</td><td><b>Mobile</td><td><b>Appointment Date</td>
<tr></td><td>${t.adate}</td></tr>
  	<c:forEach items="${listPatients}" var="t">	
<tr><td>${t.cname}</td><td>${t.age}</td><td>${t.pname}</td>
<td>${t.city}</td><td>${t.mobile}</td><td>${t.adate}</td>
	<td>
<form action="AController" method="post"> <input type="hidden" name="t"  readonly="readonly" value="viewans">
	<input type="hidden" name="accept"  readonly="readonly" value="1">
	<input type="hidden" name="id"  readonly="readonly" value="${t.id }">
	<input type="submit" value="Accept">
</form><td>
<form action="AController" method="post"> <input type="hidden" name="t"  readonly="readonly" value="viewans">
	<input type="hidden" name="accept"  readonly="readonly" value="2">
	<input type="hidden" name="id"  readonly="readonly" value="${t.id }">
	<input type="submit" value="Reject">
</form>


<c:if test="${t.accept eq 0 }" >
<td style="background: yellow"> Not Responded</td>
</c:if>
<c:if test="${t.accept eq 1 }">
 <td style="background: lightgreen">Accepted</td>
</c:if>
<c:if test="${t.accept eq 2 }">
<td style="background: orange">Rejected</td>
</c:if>

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
 <script type="text/javascript">
 function vaccination() {
	
	 var answer = confirm("Are You Sure ?")
	 
	 if (answer){
			alert("In Process!")
			
		}
		else{
			alert("Not Updated!")
			return false
		}
	
}
 </script>


    

    <script src="js/material.js"></script>
    <script src="js/ripples.min.js"></script>
    

    <script>
        $.material.init();
    </script>
  
</body>
</html>
