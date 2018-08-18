<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

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
	<link href="css/new.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Vipul Kumar" />

<%String mac=(String)session.getAttribute("mac"); %>

  <%String acc=(String)session.getAttribute("ace");%>

</head>
<body>
  
    <% String s=request.getParameter("s");
	
    if(s!=null){if(s.equals("logout")){
  		session.removeAttribute("did");
		session.removeAttribute("mac");
		session.removeAttribute("emaildoctor");
		session.removeAttribute("pid");
		session.removeAttribute("email");
    }
    }
		%>
  
        <!-- Navigation -->
        <div id="wrapper">

            <!-- Navigation -->
        
        <jsp:include page="nav.jsp"></jsp:include>
        
            <div id="page-wrapper">
                
<div class="h3"></div>
<div id="page">
   <div id="left">
   <form action="parent" method="post" id="frm"><center>
   <h2><b>Parent Login</h2><h3>Email</h3><input type="text" name="email"></input>
   <h3>Password</h3><input type="password" name="password"></input>   
   <br>
   <input type="hidden" name="t" value="login">
   <input type="submit" value="LOGIN">
   </form>
  	<a href="ForgotparPass.jsp">Forgot Password</a>
	</center>
	
</div>
<div class="h3"></div>

   
<div id="right">
   <form action="doc" method="post" id="frm">  <input type="hidden" name="t" value="login">
 <center>
   <h2><b>Doctor Login</h2><h3>Email</h3><input type="text" name="email">
   <h3>Password</h3><input type="password" name="pass">
   </input>
   <br>  <input type="submit" > </form>
	<a href="ForgotdocPass.jsp">Forgot Password</a>
	</center>
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