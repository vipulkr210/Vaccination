
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" /><meta name="description" /><meta name="author" /><title>
		<%=application.getInitParameter("collegename") %>
</title>
   
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
            <h3 class="panel-title panel-primary">Update Profile </h3>
        </div> 
    <%String pid=request.getParameter("fid");
	if(pid!=null){if(pid.equals("2")){%> <div class="panel-heading" style="background:lightgreen;color:green">
            <h3 class="panel-title panel-primary" >Great!  Your Profile Updated Succesfully.<br>Thank you for visiting Vaccination Portal. </h3>
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
<div class="col-md-10">
<c:forEach items="${list}" var="t">
  	<form action="parent"  onsubmit="vaccination()">
		<table id="ContentPlaceHolder1_DataLstExamSchedule" style="border-collapse:collapse;">
	<input type="hidden" name="password"   value="${t.password }">
	<input type="hidden" name="t"   value="updateParent">
<input type="hidden" name="id"  value="<%=session.getAttribute("pid")%>">

<tr><td>Father Name</td><td><input type="text" name="pName" value="${t.pName }"></td> 
<td>Mother Name</td><td><input type="text" name="mName" value="${t.mName }"></td></tr>

<tr><td>Email</td><td><input type="text" id="email" name="email" value="${t.email }"></td>
<td>Date Of Birth (Child)</td>
<td><select name="day"><option value="${t.day }">${t.day }</option><%for(int i=1;i<=31;i++){ %><option value=<%=i %>><%=i %></option><%} %></select> 
<select name="month"><option value="${t.month }">${t.month }</option><%for(int i=1;i<=12;i++){ %><option value=<%=i %>><%=i %></option><%} %></select> 
<select name="year"><option value="${t.year }">${t.year }</option><%for(int i=1980;i<=2025;i++){ %><option value=<%=i %>><%=i %></option><%} %></select> </tr>
<tr><td>Mobile</td><td><input type="text" name="mobile" value="${t.mobile }"></td>
<td>Child's Name</td><td><input type="text" name="cname" value="${t.cName }"></td></tr>
<tr><td>Address</td><td><input type="text" name="address" value="${t.address }"></td></tr>
<tr><td>City</td><td><input type="text" name="city" value="${t.city }"></td><td>Pin Code</td><td><input value="${t.pincode }" type="text" name="pincode"></td></tr>

<tr><td>State</td><td>
<select name="state"><option value="${t.state }">${t.state }</option><option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option><option value="Arunachal Pradesh">Arunachal Pradesh</option><option value="Assam">Assam</option><option value="Bihar">Bihar</option><option value="Chandigarh">Chandigarh</option><option value="Chhattisgarh">Chhattisgarh</option><option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option><option value="Daman and Diu">Daman and Diu</option><option value="Delhi">Delhi</option><option value="Goa">Goa</option><option value="Gujarat">Gujarat</option><option value="Haryana">Haryana</option><option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option><option value="Jharkhand">Jharkhand</option><option value="Karnataka">Karnataka</option><option value="Kerala">Kerala</option><option value="Lakshadweep">Lakshadweep</option><option value="Madhya Pradesh">Madhya Pradesh</option><option value="Maharashtra">Maharashtra</option><option value="Manipur">Manipur</option><option value="Meghalaya">Meghalaya</option><option value="Mizoram">Mizoram</option><option value="Nagaland">Nagaland</option><option value="Orissa">Orissa</option><option value="Pondicherry">Pondicherry</option><option value="Punjab">Punjab</option><option value="Rajasthan">Rajasthan</option><option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option><option value="Tripura">Tripura</option><option value="Uttaranchal">Uttaranchal</option><option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option></select>
</td>
</tr>

	</table>
	<br><br>
 <div class="col-md-6" style="width: 100%;"><input type="submit" name="btnResetPswd" value="Update Details"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                    </div></center>
 </form>
 </c:forEach>

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
