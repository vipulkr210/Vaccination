
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%String mac=(String)session.getAttribute("mac"); %>

  <%String acc=(String)session.getAttribute("ace");



%>
</head>
<body>
        <!-- Navigation -->
        <div id="wrapper">

            <!-- Navigation -->
        
        <jsp:include page="nav.jsp"></jsp:include>
        
            <div id="page-wrapper">
                
    
   
    <!-- Bootstrap Modal Dialog -->


    <div class="h3">Parent Dashboard</div>
   								
   
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title panel-primary">Upload Certificate </h3>
        </div> 
    <%String pid=request.getParameter("fid");
	if(pid!=null){if(pid.equals("2")){%> <div class="panel-heading" style="background:lightgreen;color:green">
            <h3 class="panel-title panel-primary" >Great!  Your Certificate Uploaded Succesfully.<br>Thank you for visiting Vaccination Portal. </h3>
        </div><%}}%> 
		<%if(pid!=null){if(pid.equals("4")){%> <div class="panel-heading" style="background:red;color:green">
        <h3 class="panel-title panel-primary" >Error! Please Make Sure All entries Are Appropriate. </h3>
    </div><%}}%>
	

        <div class="panel-body">
            <div class="col-md-12">
                
               <div class="aaa">
               
    
				</div>
 <div class="table-bordered">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-6">
	<form action="UploadCertificate"  onsubmit="vaccination()" method="post" enctype="multipart/form-data">
	<table id="ContentPlaceHolder1_DataLstExamSchedule" style="border-collapse:collapse;">
	<input type="hidden" name="t"   value="uploadCertificate">
<input type="hidden" name="email"  value="<%=session.getAttribute("email")%>">
<input type="hidden" name="id"  value="<%=session.getAttribute("pid")%>">
<tr><td>Select Certificate</td><td><input type="file" name="file" ></td>
	</table>
	<br><br>
 <div class="col-md-6" style="width: 100%;"><input type="submit" name="btnResetPswd" value="Upload Now"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                    </div></center>
 </form>

</div>

<div class="col-md-4">
<form action="parent"  method="post">
<input type="hidden" name="email"  value="<%=session.getAttribute("email")%>">
	<input type="hidden" name="t"   value="viewCertificate">
	<div class="col-md-6" style="width: 100%;"><input type="submit" name="btnResetPswd" value="View Certificate"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                    </div></form>

<c:forEach items="${l}" var="t">	<table id="ContentPlaceHolder1_DataLstExamSchedule" style="border-collapse:collapse;">
<tr><td><img src="Files/<%=session.getAttribute("pid")%>/${t.fileFileName}" style="width:200px;height:300px;"></td></tr>
	</table></c:forEach>
 

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
 function vaccination() {
	
	 var answer = confirm("Are You Sure ?")
	 
	 if (answer){
			alert("Certificate Upload in Process!")
			
		}
		else{
			alert("Not Created!")
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
