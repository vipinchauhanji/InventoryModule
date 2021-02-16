<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h1>Add Company Detail</h1>
<form action="AddCompanyDetail.jsp" >
<table>
<tr><td>CompanyId:</td><td><input type="text" name="CompanyId"/></td></tr>
<tr><td>CompanyName:</td><td><input type="text" name="CompanyName"/></td></tr>
<tr><td>Contact:</td><td><input type="text" name="Contact"/></td></tr>
<tr><td>City:</td><td><input type="text" name="City"/></td></tr>
<tr><td>Street:</td><td><input type="text" name="Street"/></td></tr>
<tr><td>District:</td><td><input type="text" name="District"/></td></tr>
<tr><td>State:</td><td><input type="text" name="State"/></td></tr>
<tr><td>Country:</td><td>
<select name="Country" style="width:155px">
<option>India</option>
<option>Pakistan</option>
<option>Afghanistan</option>
<option>Bankok</option>
<option>Nepal</option>
</select>
</td></tr>
<tr><td>Email:</td><td><input type="email" name="MailId"/></td></tr>
<tr><td>Status:</td><td><input type="text" name="Status"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Add Company"/></td></tr>
</table>
</form>
</body>
</html>