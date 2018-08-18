
<!DOCTYPE html>

<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
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
<%String mac=(String)session.getAttribute("mac"); %>

  <%String acc=(String)session.getAttribute("ace");

JDBCConnection c=new JDBCConnection();
c.connect();
Statement st=c.con.createStatement();
String t=request.getParameter("t");
String city=request.getParameter("city");
String did=request.getParameter("did");
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
            <h3 class="panel-title panel-primary">Add Appointment </h3>
        </div> 
    <%String fid=request.getParameter("fid");
	if(fid!=null){if(fid.equals("2")){%> <div class="panel-heading" style="background:lightgreen;color:green">
            <h3 class="panel-title panel-primary" >Congratualtions! Your appointment is fixed.<br>Thank you for visiting Vaccination Portal. </h3>
        </div><%}}%> 
		<%
	if(fid!=null){if(fid.equals("1")){%> <div class="panel-heading" style="background:red;color:green">
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

  <%if(t==null){ %>	<form action="" method="post" onsubmit="vaccination()">
		<table id="ContentPlaceHolder1_DataLstExamSchedule" style="border-collapse:collapse;">
	<input type="hidden" name="t"  readonly="readonly" value="viewdoctor">
<!-- <tr><td>Doctor ID</td><td><input type="text" name="userid" id="userid" readonly="readonly" value=""></td>
</tr> -->
<tr><td>Select City</td><td><select name="city">
<%try{ ResultSet r=st.executeQuery("select city from Doctor group by city");while(r.next()){%>
<option value="<%=r.getString(1)%>"><%=r.getString(1)%></option>
<%}}catch(Exception e){} %>
</select></td> </tr>

</tr>

	</table>
	<br><br>
	 
 
 <div class="col-md-6" style="width: 100%;"><input type="submit" name="btnResetPswd" value="View Doctors"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                    </div></center>
 </form><%} %>
 <%if(t!=null){if(t.equals("fix")){ %>
 
   	
	
<form action="AController" method="post" onsubmit="vaccination()">
	<table class="table table-striped table-bordered table-hover" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">
	<tr>
<%try{ ResultSet r=st.executeQuery("select * from Doctor where did='"+did+"'");while(r.next()){%>

<input type="hidden" name="did"  readonly="readonly" value="<%=r.getString("did")%>">
<input type="hidden" name="dname"  readonly="readonly" value="<%=r.getString("fname")%> <%=r.getString("lname")%>">
<input type="hidden" name="city"  readonly="readonly" value="<%=city%>">
<%}}catch(Exception e){} %>
<%int d=0,m=0,y=0;try{ ResultSet r=st.executeQuery("select * from Parent where id='"+session.getAttribute("pid")+"' ");
while(r.next()){d=r.getInt("day");m=r.getInt("month");y=r.getInt("year");%>
<tr><td><b>Parent Child</td><td><b>Description</td><td><b>Date</td><td><b>Mobile</td><td><b>Age</td></tr>
 
<tr>
<td><%=r.getString("pname")%> <%=r.getString("cname")%></td>
<!-- <td><%=r.getString("address")%></td> -->
<td><input type="text" name="description"   value=""></td>
<td><input type="date" name="adate"  required="required" value=""></td>
<td><input type="text" name="mobile" required="required"  value=""></td>
<%LocalDate l=LocalDate.now();
LocalDate b=LocalDate.of(y,m,d);
Period g=Period.between(b, l);
%>
<td><input type="text" name="age"  value="<%=g.getYears() %>.<%=g.getMonths() %>.<%=g.getDays() %>" value=""> Year.Months.Days </td>

<input type="hidden" name="pid" readonly="readonly" value="<%=r.getString("id")%>">
<input type="hidden" name="pname" value="<%=r.getString("pname")%>">
<input type="hidden" name="cname"  value="<%=r.getString("cname")%>">
<input type="hidden" name="age"  value="<%=r.getString("age")%>">
<input type="hidden" name="mobile" value="<%=r.getString("mobile")%>">
<input type="hidden" name="email" value="<%=r.getString("email")%>">
<input type="hidden" name="t"   value="takeappointment">
<td><div class="col-md-6" style="width: 100%;">
<input type="submit" name="btnResetPswd" value="Fix Appointment"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                   </div></td> </tr>
  
<%}}catch(Exception e){} %>
</form>
	</table>
	<br><br>
 </center>

 
 
 <%}} %>



<%if(t!=null){if(t.equals("viewdoctor")){ %>
 
   	
		<table class="table table-striped table-bordered table-hover" cellspacing="0" rules="all" border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" style="width:100%;border-collapse:collapse;">
	<tr>
<td><b>Doctor Name</td><td><b></>Address</td><td><b>Mobile</td><td><b>City</td><td><b>State</td><td><b>Qualification</td></tr>
	
	<tr>
<%try{ ResultSet r=st.executeQuery("select * from Doctor where city='"+city+"' order by fname");while(r.next()){%>
<form action=""  onsubmit="vaccination()"><tr>
<td><%=r.getString("fname")%> <%=r.getString("lname")%></td>
<td><%=r.getString("address")%></td>
<td><%=r.getString("mobile")%></td>
<td><%=r.getString("city")%></td>
<td><%=r.getString("state")%></td>
<td><%=r.getString("hiqualification")%></td>

<input type="hidden" name="t"  readonly="readonly" value="fix">
<input type="hidden" name="did"  readonly="readonly" value="<%=r.getString("did")%>">
<input type="hidden" name="city"  readonly="readonly" value="<%=r.getString("city")%>">
<input type="hidden" name="dname"  readonly="readonly" value="<%=r.getString("fname")%> <%=r.getString("lname")%>">
<input type="hidden" name="mobile"  readonly="readonly" value="<%=r.getString("mobile")%>">
<input type="hidden" name="address"  readonly="readonly" value="<%=r.getString("address")%>">
<input type="hidden" name="state"  readonly="readonly" value="<%=r.getString("state")%>">
<input type="hidden" name="hiqualification"  readonly="readonly" value="<%=r.getString("hiqualification")%>">

<td><div class="col-md-6" style="width: 100%;"><input type="submit" name="btnResetPswd" value="Add Appointment"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                   </div></td> </tr>
</form>  
<%}}catch(Exception e){} %>

	</table>
	<br><br>
 </center>

 
 
 <%}} %>






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
  <%c.con.close(); %>  
</body>
</html>
