<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.nacre.dao.CompanyDao"%>
<jsp:useBean id="u" class="com.nacre.beans.Company"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
CompanyDao.delete(u);
response.sendRedirect("Company.jsp");
%>
</body>
</html>
