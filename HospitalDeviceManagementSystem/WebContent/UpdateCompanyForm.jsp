<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="InventoryHome.jsp">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Login.html">LogOut</a>
      </li>     
    </ul>
  </div>  
</nav>
<br>
<%@page import="com.nacre.dao.CompanyDao,com.nacre.beans.Company"%>
<%
String id=request.getParameter("CompanyId");
Company u=CompanyDao.getRecordById(Integer.parseInt(id));
%>

<h1>Update Company</h1>
<form action="UpdateCompanyForm.jsp" method="post">
<input type="hidden" name="CompanyId" value="<%=u.getCompanyId() %>"/>
<table>
<tr><td>Name:</td><td><input type="text" name="CompanyName" value="<%= u.getCompanyName()%>"/></td></tr>
<tr><td>Contact:</td><td><input type="text" name="Contact" value="<%= u.getContact()%>"/></td></tr>
<tr><td>City:</td><td><input type="text" name="City" value="<%= u.getCity()%>"/></td></tr>
<tr><td>Street:</td><td><input type="text" name="Street" value="<%= u.getStreet()%>"/></td></tr>
<tr><td>District:</td><td><input type="text" name="District" value="<%= u.getDistrict()%>"/></td></tr>
<tr><td>State:</td><td><input type="text" name="State" value="<%= u.getState()%>"/></td></tr>
<tr><td>Country:</td><td>
<select name="country">
<option>India</option>
<option>Pakistan</option>
<option>Bankok</option>
<option>Berma</option>
</select>
</td></tr>
<tr><td>Email:</td><td><input type="text" name="Email" value="<%= u.getMailId()%>"/></td></tr>
<tr><td>Status:</td><td><input type="text" name="Status" value="<%= u.getStatus()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Update Company"/></td></tr>
</table>
</form>
</body>
</html>