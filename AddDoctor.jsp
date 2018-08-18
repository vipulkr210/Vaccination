
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


    <div class="h3">New Profile  Dashboard</div>
   								
   
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title panel-primary">Add New Doctor </h3>
        </div> 
    <%String pid=request.getParameter("fid");
	if(pid!=null){if(pid.equals("2")){%> <div class="panel-heading" style="background:lightgreen;color:green">
            <h3 class="panel-title panel-primary" >Congratualtions!  You Will Be Able To login to your Doctor's Login After Approval from your Email ID.<br>Thank you for visiting Vaccination Portal. </h3>
        </div><%}}%> 
		<%
	if(pid!=null){if(pid.equals("1")){%> <div class="panel-heading" style="background:red;color:green">
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
<div class="col-md-10">

  	<form action="doc" method="post" onsubmit="vaccination()">
		<table id="ContentPlaceHolder1_DataLstExamSchedule" style="border-collapse:collapse;">
	<input type="hidden" name="t"  readonly="readonly" value="addDoctor">
<!-- <tr><td>Doctor ID</td><td><input type="text" name="userid" id="userid" readonly="readonly" value=""></td>
</tr> -->
<tr><td>First Name</td><td><input type="text" name="fname"></td> 
<td>Last Name</td><td><input type="text" name="lname"></td></tr>

<tr><td>Email</td><td><input type="text"  name="email"></td><td>Date Of Birth</td><td><input type="text" id="dob" name="dob">(DD/MM/YYYY)</tr>
<tr><td>Mobile</td><td><input type="text" name="mobile"></td>
<td>Aadhar Number</td><td><input type="text" name="aadharnum"></td></tr>
<tr><td>Clinic Address</td><td><textarea  name="address" rows="3" ></textarea></td>
<td>Password</td><td><input type="password" id="pass" name="password"></td></tr>
<tr><td>City</td><td><input type="text" name="city"></td><td>Pin Code</td><td><input type="text" name="pincode"></td></tr>

<tr><td>State</td><td><select name="state"><option></option><option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option><option value="Arunachal Pradesh">Arunachal Pradesh</option><option value="Assam">Assam</option><option value="Bihar">Bihar</option><option value="Chandigarh">Chandigarh</option><option value="Chhattisgarh">Chhattisgarh</option><option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option><option value="Daman and Diu">Daman and Diu</option><option value="Delhi">Delhi</option><option value="Goa">Goa</option><option value="Gujarat">Gujarat</option><option value="Haryana">Haryana</option><option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option><option value="Jharkhand">Jharkhand</option><option value="Karnataka">Karnataka</option><option value="Kerala">Kerala</option><option value="Lakshadweep">Lakshadweep</option><option value="Madhya Pradesh">Madhya Pradesh</option><option value="Maharashtra">Maharashtra</option><option value="Manipur">Manipur</option><option value="Meghalaya">Meghalaya</option><option value="Mizoram">Mizoram</option><option value="Nagaland">Nagaland</option><option value="Orissa">Orissa</option><option value="Pondicherry">Pondicherry</option><option value="Punjab">Punjab</option><option value="Rajasthan">Rajasthan</option><option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option><option value="Tripura">Tripura</option><option value="Uttaranchal">Uttaranchal</option><option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option></select>
</td>
</tr>

<tr><tr><td>Highest Qualification</td><td><input type="text" name="hiqualification"></td><td>University</td>
<td><input type="text" name="university"></td></tr>

<tr><td>%age (Highest qualification)</td><td><input type="text" name="percentage"></td><td>Passing Year (Highest qualification)</td>
<td><input type="text" name="passyear"></td></tr>

	</table>
	<br><br>
 <div class="col-md-6" style="width: 100%;"><input type="submit" name="btnResetPswd" value="Register Doctor"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                    </div></center>
 </form>
 

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
			alert("Profile Creation in Process!")
			
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
