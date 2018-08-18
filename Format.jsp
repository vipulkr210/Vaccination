
<!DOCTYPE html>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DecimalFormat"%>
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
if(acc==null || acc==""){
//response.sendRedirect("login1.jsp?logcheck=false");
}


%>
</head>
<body>
        <!-- Navigation -->
        <div id="wrapper">

            <!-- Navigation -->
        
        <jsp:include page="nav.jsp"></jsp:include>
        
            <div id="page-wrapper">
                
    
    <div class="messagealert" id="alert_container">
    </div>

    <!-- Bootstrap Modal Dialog -->


    <div class="h3"> Dashboard</div>
   								
   
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title panel-primary"><%%></h3>
        </div>
        <div class="panel-body">
            <div class="col-md-12">
                <div class="row" style="overflow: scroll; height: 3d50px;">
                
               <div class="aaa">
           <table class="table table-striped table-bordered table-hover" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">
	<tr><td> <form action=""  >

</form>
    </td></tr></table>	
    
				</div>
 <div class="table-bordered">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-10">
  	


</div>
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
