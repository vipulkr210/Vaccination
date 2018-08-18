
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%String mac=(String)session.getAttribute("mac");
String userid=(String)session.getAttribute("userid"); %>

  <%String acc=(String)session.getAttribute("ace");
//if(acc==null || acc==""){response.sendRedirect("login1.jsp?logcheck=false");}
  
 %>
   
               <div id="dynamicMenu" class="sidebar-nav navbar-collapse"> <ul class="nav" id="side-menu"><li>  
               <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>  </li>
             <%if(mac==null){%>  <li> <a href=AddDoctor.jsp>Add new Doctor</a> </li>
                <li> <a href=AddParent.jsp>Add New Parent</a> </li> 
             <% }  %>      
        <li>  		
				  <%if(mac!=null){if(mac.equals("Doctor")){ %>
               
           
                   <li> <a href=#><i class="fa fa-bar-wrench -o fa-fw"></i>Apointments<span class="fa arrow"></span></a>
<ul class="nav nav-second-level"> <li> <a href=TodayAppointment.jsp>Today's Appointment</a> </li>
                          </ul>
					  <li> <a href=#><i class="fa fa-bar-wrench -o fa-fw"></i>Patient's List <span class="fa arrow"></span></a>
<ul class="nav nav-second-level"> 
                       
                      <li> <a href=DoctorAppointment.jsp>Patient Record</a> </li> 
					  </ul>
					  
                      <li> <a href=#><i class="fa fa-bar-wrench -o fa-fw"></i>Child's Record<span class="fa arrow"></span></a>
                      <ul class="nav nav-second-level"> 
                      <li> <a href=#>View Record</a> </li>
                             </ul> 
					  <li> <a href=#><i class="fa fa-bar-wrench -o fa-fw"></i>Doctors<span class="fa arrow"></span></a>
                      <ul class="nav nav-second-level"> 
                      
                      <li> <a href=ViewDoctor.jsp>View Doctor Details</a> </li>
                        <li> <a href=EditDoctor.jsp>Update Doctor Details</a> </li>
                        <li> <a href=index.jsp?s=logout>LOGOUT</a> </li>
                            </ul> 
					  
                      
          	<%}} %>
				
				
			 <%if(mac!=null){if(mac.equals("Parent")){ %>
            
                   
					  <li> <a href=#><i class="fa fa-bar-wrench -o fa-fw"></i>Appointment <span class="fa arrow"></span></a>
<ul class="nav nav-second-level"> 
                      <li> <a href=ParentAppointment.jsp>Take Appointment</a> </li> 
					  <li> <a href=ParentRecord.jsp>Previous Record</a> </li> 
					  </ul>
					  
                      <li> <a href=#><i class="fa fa-bar-wrench -o fa-fw"></i>Child's Record<span class="fa arrow"></span></a>
                      <ul class="nav nav-second-level"> 
                      <li> <a href=ViewParent.jsp>View Record</a> </li>
                        <li> <a href=Vchart.jsp>View Vaccination Chart</a> </li>
                             </ul> 
					  
					   <li> <a href=EditParent.jsp>Update Child Details</a> </li>
                       <li> <a href=UploadCertificate.jsp>Upload Birth Certificate</a> </li>
                       <li> <a href=index.jsp?s=logout>LOGOUT</a> </li>
                             </ul> 
					  
                      
                      
					 <%}} %> 	
					</div>