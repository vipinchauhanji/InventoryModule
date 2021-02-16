
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.nacre.dao.CompanyDao,com.nacre.beans.Company,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="Home.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="AddCompany.jsp">AddCompany</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.html">LogOut</a>
      </li>     
    </ul>
  </div>  
</nav>
<br>

<h1>Company's List</h1>

<%
List<Company> list=CompanyDao.getCompanyDetails();
request.setAttribute("list",list);  
%>

<table border="1" width="90%">
<tr><th>CompanyId</th><th>CompanyName</th><th>contact</th><th>Street</th><th>Town</th><th>City</th><th>State</th><th>Country</th><th>MailId</th><th>Status</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getCompanyId()}</td><td>${u.getCompanyName()}</td><td>${u.getContact()}</td><td>${u.getStreet()}</td><td>${u.getDistrict()}</td><td>${u.getCity()}</td><td>${u.getState()}</td><td>${u.getCountry()}</td><td>${u.getMailId()}</td><td>${u.getStatus()}</td><td><a href="UpdateCompany.jsp?companyId=${u.getCompanyId()}">Edit</a></td><td><a href="DeleteCompany.jsp?companyId=${u.getCompanyId()}">Delete</a></td></tr>
</c:forEach>
</table>

</body>
</html>