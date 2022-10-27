<%@page import="dxc.CanteenMngt.Customer"%>
<%@page import="dxc.CanteenMngt.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
    background-image: url('customer.jpg');
    
}
  .container{
  background-color: rgb(231,230,241);
  border: 3px solid rgb(64,6,119);
  padding:34px 19px;
  margin: 14px 19px;
  border-radius: 23px;
  height:325px;
  width:650px;
  box-sizing: border-box;
  
  }
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div class="container">
<form method="get" action="AddCustomer.jsp">
		<center>
			Customer Name : 
			<input type="text" name="CUS_NAME" /> <br/><br/>
			
			Customer PhNo : 
			<input type="number" name="CUS_PHN_NO" /> <br/><br/>
			
			User Name : 
			<input type="text" name="CUS_USERNAME" /> <br/><br/>
			
			Password : 
			<input type="text" name="CUS_PASSWORD" /> <br/><br/>
			
			Customer Email : 
			<input type="text" name="CUS_EMAIL" /> <br/><br/>
			<input type="submit" value="add Customer" /> 
		</center> 
	</form>
	
	<%
	if (request.getParameter("CUS_PHN_NO") != null) {
			CustomerDAO dao = new CustomerDAO();
			Customer customer = new Customer();
			customer.setCUS_NAME(request.getParameter("CUS_NAME"));
			customer.setCUS_PHN_NO(Long.parseLong(request.getParameter("CUS_PHN_NO")));
			customer.setCUS_USERNAME(request.getParameter("CUS_USERNAME"));
			customer.setCUS_PASSWORD(request.getParameter("CUS_PASSWORD"));
			customer.setCUS_EMAIL(request.getParameter("CUS_EMAIL"));
			dao.addCustomer(customer);
			
	}
	
		
	%>
	</div>
	</center>
</body>
</html>