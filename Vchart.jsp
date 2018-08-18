
<!DOCTYPE html>

<%@page import="java.time.temporal.ChronoUnit"%>
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
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title><%=application.getInitParameter("collegename") %></title>

<%String mac=(String)session.getAttribute("mac");int pid=(Integer)session.getAttribute("pid"); %>
<%if(request.getParameter("t")==null){response.sendRedirect("vaccine?t=view&pid="+pid);} %>
  <%String acc=(String)session.getAttribute("ace");
  int da=0,mo=0,ye=0;String child="",fname="";
  Period p=null;LocalDate ld=null;LocalDate birthday=null;
  LocalDate today=null; int total=0;
  try
  { JDBCConnection c = new JDBCConnection();
  c.connect();
  String sql1 ="select * from Parent where email='"+session.getAttribute("email")+"'";
  Statement ss=c.con.createStatement();
  	 ResultSet h =ss.executeQuery(sql1);
  			while( h.next())
       {
          child=h.getString("cname");
          pid=h.getInt("id");
          da=h.getInt("day");mo=h.getInt("month");ye=h.getInt("year");
       }
 
  	today=LocalDate.now();
  	birthday=LocalDate.of(ye,mo,da);
  	p=Period.between(birthday, today);
total=p.getDays()+p.getMonths()*30+p.getYears()*365;

}catch(Exception e){e.printStackTrace();}
 // int d=today.getDayOfMonth();
%>
</head>
<body>
        <!-- Navigation -->
        <div id="wrapper">
        <jsp:include page="nav.jsp"></jsp:include>
        
            <div id="page-wrapper">
    <div class="h3">Vaccination Chart - <%=child%></div>
   								
   
     <h4><%=da%>/<%=mo%>/<%=ye%> = <%=total %>Days,  Years:  <%=((total/365)%365) %></h4>
    <table class="table table-striped table-bordered table-hover"  border="1" id="ContentPlaceHolder1_DataLstExamSchedule_GrdProcess_0" 
  	 style="width:100%;border-collapse:collapse;margin-top:-270px;">
	<%try{ %>
<form action="vaccine" method="post">
		 <tr style="background: gray"><td>Age</td><td>Vaccine</td><td>Due on</td><td>Given on</td><td>Remarks</td></tr> 
<input type="hidden" value="<%=child %>" name="cname">
	<input type="hidden" value="<%=birthday %>" name="dob">
	<input type="hidden" value="<%=da %>" name="day">
	<input type="hidden" value="<%=ye %>" name="year">
	<input type="hidden" value="<%=mo %>" name="month">
	<input type="hidden" value="<%=session.getAttribute("pid")%>" name="pid">
	<input type="hidden" value="filldate" name="t">
	<c:forEach var="t" items="${chart}"> 
	
<tr><td rowspan="3" style="text-align: center;">Birth</td>
<td>BCG</td>
<td><input type="text" name="dBCG" value="<%=birthday.plus(0,ChronoUnit.DAYS) %>"></td>
<td><input type="date" name="BCG" value="${t.BCG }" ></td></tr>
<tr><td>OPV 0</td>
<td><input type="text" name="dOPV0" value="<%=birthday.plus(0,ChronoUnit.DAYS) %>"></td>
<td><input type="date" name="OPV0" value="${t.OPV0 }" ></td></tr>
<tr><td>Hep-B1<td><input type="text" name="dHepB1" value="<%=birthday.plus(0,ChronoUnit.DAYS) %>" >
<td><input type="date" name="HepB1" value="${t.hepB1 }"></td></tr>
<tr><td>6 Weeks</td><td>DTwP 1<td><input type="text" name="dDTwP1" value="<%=birthday.plus(6,ChronoUnit.WEEKS) %>"  >
<td><input type="date" name="DTwP1" value="${t.DTwP1 }"></td>
<br>
<tr><td></td><td>IPV 1<td><input type="text" name="dIPV1"  value="<%=birthday.plus(6,ChronoUnit.WEEKS) %>" >
<td><input type="date" name="IPV1" value="${t.IPV1 }"></td></tr>
<tr><td></td><td>Hep B2<td><input type="text" name="dHepB2"  value="<%=birthday.plus(6,ChronoUnit.WEEKS) %>">
<td><input type="date" name="HepB2" value="${t.hepB2 }"></td></tr>
<tr><td></td><td>Rotavirus-1<td><input type="text" name="dRotavirus1"  value="<%=birthday.plus(6,ChronoUnit.WEEKS) %>" >
<td><input type="date" name="Rotavirus1" value="${t.rotavirus1 }"></td></tr>
<tr><td></td><td>PCV 2<td><input type="text" name="dPCV2"  value="<%=birthday.plus(6,ChronoUnit.WEEKS) %>" ><td>
<input type="date" name="PCV2" value="${t.PCV2 }"></td></tr>

<tr><td>10 Weeks</td><td>DTwP 2<td><input type="text" name="dDTwP2" value="<%=birthday.plus(10,ChronoUnit.WEEKS) %>" >
<td><input type="date" name="DTwP2" value="${t.DTwP2 }"></td><br>
<tr><td></td><td>IPV 2<td><input type="text" name="dIPV2" value="<%=birthday.plus(10,ChronoUnit.WEEKS) %>" >
<td><input type="date" name="IPV2" value="${t.IPV2 }"></td></tr>
<tr><td></td><td>Hib-B1<td><input type="text" name="dHibB1" value="<%=birthday.plus(10,ChronoUnit.WEEKS) %>">
<td><input type="date" name="HibB1" value="${t.hibB1 }"></td>
<tr><td></td><td>Rotavirus-2<td><input type="text" name="dRva" value="<%=birthday.plus(10,ChronoUnit.WEEKS) %>">
<td><input type="date" name="Rotavirus2" value="${t.rva }"></td></tr>
<tr><td></td><td>PCV 2<td><input type="text" name="dPCV22" value="<%=birthday.plus(10,ChronoUnit.WEEKS) %>">
<td><input type="date" name="PCV22" value="${t.PCV22 }"></td></tr>

 <tr><td>14 Weeks</td><td>DTwP 3<td><input type="text" name="dDTwP3" value="<%=birthday.plus(14,ChronoUnit.WEEKS) %>">
 <td><input type="date" name="DTwP3" value="${t.DTwP3 }"></td><br>
<tr><td></td><td>IPV 3<td><input type="text" name="d"  value="<%=birthday.plus(14,ChronoUnit.WEEKS) %>" >
<td><input type="date" name="IPV3" value="${t.IPV3 }"></td></tr>
<tr><td></td><td>Hib 3<td><input type="text" name="dHib3"  value="<%=birthday.plus(14,ChronoUnit.WEEKS) %>" >
<td><input type="date" name="Hib3" value="${t.hib3 }"></td>
<tr><td></td><td>Rotavirus-3<td><input type="text" name="dRotavirus3"  value="<%=birthday.plus(14,ChronoUnit.WEEKS) %>">
<td><input type="date" name="Rotavirus3" value="${t.rotavirus3 }"></td></tr>
<tr><td></td><td>PCV 3<td><input type="text" name="dPCV3"  value="<%=birthday.plus(14,ChronoUnit.WEEKS) %>">
<td><input type="date" name="PCV3" value="${t.PCV3 }"></td></tr>

 <tr><td>6 Month</td><td>OPV 1<td><input type="text" name="dOPV1" value="<%=birthday.plus(6,ChronoUnit.MONTHS) %>">
 <td><input type="date" name="OPV1" value="${t.OPV1 }"></td><br>
<tr><td></td><td>Hep-B3<td><input type="text" name="dHepB3" value="<%=birthday.plus(6,ChronoUnit.MONTHS) %>" >
<td><input type="date" name="HepB3" value="${t.hepB3 }"></td></tr>

 <tr><td>9 Month</td><td>OPV 2<td><input type="text" name="dOPV2" value="<%=birthday.plus(9,ChronoUnit.MONTHS) %>">
 <td><input type="date" name="OPV2" value="${t.OPV2 }"></td><br>
<tr><td></td><td>MMR 1<td><input type="text" name="dMMR1"  value="<%=birthday.plus(9,ChronoUnit.MONTHS) %>">
<td><input type="date" name="MMR1" value="${t.MMR1 }"></td></tr>
<tr><td>9-12 Month</td><td>Typhoid Conjugate<td><input type="text" name="dTyphoidConjugate" value="<%=birthday.plus(9,ChronoUnit.MONTHS) %>">
<td><input type="date" name="TyphoidConjugate" value="${t.typhoidConjugate }"></td><br></tr>
<tr><td>12 Month</td><td>Hep-A1<td><input type="text" name="dHepA1" value="<%=birthday.plus(12,ChronoUnit.MONTHS) %>">

<td><input type="date" name="HepA1" value="${t.hepA1 }"></td><br></tr>
 <tr><td>15 Month</td><td>MMR 2<td><input type="text" name="dMMR2" value="<%=birthday.plus(15,ChronoUnit.MONTHS) %>">
 <td><input type="date" name="MMR2" value="${t.MMR2 }"></td><br>
<tr><td></td><td>Varicella 1<td><input type="text" name="dVaricella1" value="<%=birthday.plus(15,ChronoUnit.MONTHS) %>" >
<td><input type="date" name="Varicella1" value="${t.varicella1 }"></td></tr>
<tr><td></td><td>PCV Booster<td><input type="text" name="dPCVBooster" value="<%=birthday.plus(15,ChronoUnit.MONTHS) %>" >
<td><input type="date" name="PCVBooster" value="${t.PCVBooster }"></td></tr>

 <tr><td>16-18 Month</td><td>DTwP B1/DTap B1<td><input type="text" name="dDTwPB1DTapB1" value="<%=birthday.plus(16,ChronoUnit.MONTHS) %>">
 <td><input type="date" name="DTwPB1DTapB1" value="${t.DTwPB1DTapB1 }"></td><br>
<tr><td></td><td>IPV B1<td><input type="text" name="dIPVB1" value="<%=birthday.plus(16,ChronoUnit.MONTHS) %>" >
<td><input type="date" name="IPVB1" value="${t.IPVB1 }"></td></tr>
<tr><td></td><td>Hib B1<td><input type="text" name="dHIBB1" value="<%=birthday.plus(16,ChronoUnit.MONTHS) %>" >
<td><input type="date" name="HIBB1" value="${t.hibB1 }"></td></tr>

<tr><td>18 Month</td><td>Hep-A 2<td><input type="text" name="dHepA2" value="<%=birthday.plus(18,ChronoUnit.MONTHS) %>">
<td><input type="date" name="HepA2" value="${t.hepA2 }"></td><br>
</tr><tr><td>2 years</td><td>Typhoid Booster<td><input type="text" name="dTyphoidBooster1" value="<%=birthday.plus(2,ChronoUnit.YEARS) %>" >
<td><input type="date" name="TyphoidBooster1" value="${t.typhoidBooster1 }"></td><br></tr>
 <tr><td>4-6 years</td><td>DTwP B2/DTap B2<td><input type="text" name="dDTwPB2DTapB2" value="<%=birthday.plus(4,ChronoUnit.YEARS) %>">
 <td><input type="date" name="DTwPB2DTapB2" value="${t.DTwPB2DTapB2 }"></td><br>

<tr><td></td><td>OPV 3<td><input type="text" name="dOPV3" value="<%=birthday.plus(4,ChronoUnit.YEARS) %>">
<td><input type="date" name="OPV3" value="${t.OPV3 }"></td></tr>
<tr><td></td><td>Vericella 2<td><input type="text" name="dVericella2" value="<%=birthday.plus(4,ChronoUnit.YEARS) %>">
<td><input type="date" name="Vericella2" value="${t.vericella2 }"></td></tr>
<tr><td></td><td>Typhoid Booster<td><input type="text" name="dTyphoidBooster2" value="<%=birthday.plus(4,ChronoUnit.YEARS) %>">
<td><input type="date" name="TyphoidBooster2" value="${t.typhoidBooster2 }"></td></tr>

 <tr><td>10-12 years</td><td>Tdap/Td<td><input type="text" name="dTdapTd"value="<%=birthday.plus(10,ChronoUnit.YEARS) %>" >
 <td><input type="date" name="TdapTd" value="${t.tdapTd }"></td><br>
<tr><td></td><td>HPV 1<td><input type="text" name="dHPV1" value="<%=birthday.plus(10,ChronoUnit.YEARS) %>" >
<td><input type="date" name="HPV1" value="${t.HPV1 }"></td></tr>
<tr><td></td><td>HPV 2<td><input type="text" name="dHPV2" value="<%=birthday.plus(10,ChronoUnit.YEARS) %>" >
<td><input type="date" name="HPV2" value="${t.HPV2 }"></td></tr>

 <tr><td>1 month</td><td>1.Hepatitis B-2nd dose<br>2.DTaP-1st dose<br>3.IPV-1st dose<br>4.Hib-1st dose<br>5.Pneumococcal Conjugate-1st dose</td>
<td><input type="text" name="dHDHIP" value="<%=birthday.plus(1,ChronoUnit.MONTHS) %>" >
<td><input type="date" name="HDHIP" value="${t.HDHIP }"></td>
</tr>

	</table> </c:forEach> 
   <div class="col-md-6" style="width: 100%;"><input type="submit" name="btnResetPswd" value="SUBMIT"  id="btnResetPswd" class="btn btn-raised btn-sm btn-primary btn-block login-btn" data-dismiss="modal" />
                                    </div>
 </form>  
    
 <%}catch(Exception e){e.printStackTrace();} %>
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
