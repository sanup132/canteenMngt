<%@page import="dxc.CanteenMngt.Vendor"%>
<%@page import="java.util.List"%>
<%@page import="dxc.CanteenMngt.VendorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
  background-color: lightblue;
}
  .container{
  background-color: rgb(231,230,241);
  border: 3px solid rgb(64,6,119);
  padding:34px 19px;
  margin: 14px 19px;
  border-radius: 23px;
  height:425px;
  width:800px;
  box-sizing: border-box;
  
  }
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<center>
<div class="container">
<%
	VendorDAO dao = new VendorDAO();
	List<Vendor> vendorList = dao.showVendor();
%>
<table border="3" align="center">
<tr>
<th>VEN_ID</th>
			<th>VEN_NAME</th>
			<th>VEN_PHN_NO</th>
			<th>VEN_USERNAME</th>
			<th>VEN_PASSWORD</th>
			<th>VEN_EMAIL</th></tr>
<%
for (Vendor vendor : vendorList) {
%>
<tr>
<td><%=vendor.getVEN_ID() %>  </td>
		<td><%=vendor.getVEN_NAME() %> </td>
		<td><%=vendor.getVEN_PHN_NO() %> </td>
		<td><%=vendor.getVEN_USERNAME() %> </td>
		<td><%=vendor.getVEN_PASSWORD() %> </td>
		<td><%=vendor.getVEN_EMAIL() %> </td>
		</tr>
		<%
}
		%>

			</table>
			<br/><br/>
			<a href="VendorAdd.jsp">Add vendor</a>
			</div>
			</center>
</body>
</html>