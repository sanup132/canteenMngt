<%@page import="dxc.CanteenMngt.Customer"%>
<%@page import="java.util.List"%>
<%@page import="dxc.CanteenMngt.CustomerDAO"%>
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
  width:1025px;
  box-sizing: border-box;
  
  }
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div class="container">
<%
	CustomerDAO dao = new CustomerDAO();
	List<Customer> customerList = dao.showCustomer();
%>
	<table border="3" align="center">
		<tr>
			<th>CUSTOMER ID</th>
			<th>CUSTOMER_NAME</th>
			<th>CUSTOMER_PH_NO</th>
			<th>CUSTOMER_USERNAME</th>
			<th>CUSTOMER_PASSWORD</th>
			<th>CUSTOMER_EMAIL</th>
			
		</tr>
<%
	for(Customer customer : customerList) {
%>
	<tr>
		<td><%=customer.getCUS_ID() %>  </td>
		<td><%=customer.getCUS_NAME() %> </td>
		<td><%=customer.getCUS_PHN_NO() %> </td>
		<td><%=customer.getCUS_USERNAME() %> </td>
		<td><%=customer.getCUS_PASSWORD() %> </td>
		<td><%=customer.getCUS_EMAIL() %> </td>
		
		
		
		
	</tr>
<%
	}
%>
	</table>
	<br/><br/> 
<a href="AddCustomer.jsp">Add Customer</a>
</div>
</center>
</body>
</html>