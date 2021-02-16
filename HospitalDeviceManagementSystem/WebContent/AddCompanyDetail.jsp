<%@page import="com.nacre.dao.CompanyDao"%>
<jsp:useBean id="u" class="com.nacre.beans.Company"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
u.setCompanyId(request.getParameter("CompanyId"));
u.setCompanyName(request.getParameter("CompanyName"));
u.setCity(request.getParameter("City"));
u.setContact(request.getParameter("Contact"));
u.setStreet(request.getParameter("Street"));
u.setStatus(request.getParameter("Status"));
u.setState(request.getParameter("State"));
u.setMailId(request.getParameter("MailId"));
u.setCountry(request.getParameter("Country"));
u.setDistrict(request.getParameter("District"));

int i=CompanyDao.addCompany(u);
if(i>0){
response.sendRedirect("AddCompany-Success.jsp");
}else{
response.sendRedirect("AddCompany-Error.jsp");
}
%>