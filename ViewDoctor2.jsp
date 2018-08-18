<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>View Doctor Details</h1>
<h3><form action="viewdoc" method="post"><input type="hidden" name="t" value="viewdoc"><input type="submit" value="Show Users"></form>
</h3>
<c:forEach items="${list }" var="t">
<table><tr><td>${t.name}</td></tr>
<tr><td>${t.fname}</td>
<td>${t.lname}</td></tr>
<tr><td>${t.email}</td>
<td>${t.dob}</td></tr>
<tr><td>${t.mobile}</td>
<td>${t.aadharnum}</td></tr>
<tr><td>${t.address}</td>
<td>${t.degree}</td></tr>
<tr><td>${t.city}</td></tr>
<tr><td>${t.state}</td></tr>
<tr><td>${t.passyear}</td>
<td>${t.university}</td></tr>
<tr><td>${t.hiqualification}</td></tr>
<tr><td>${t.pincode}</td></tr>

</c:forEach>

</table>


</body></html>