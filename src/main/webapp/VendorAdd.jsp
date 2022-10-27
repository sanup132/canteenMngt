<%@page import="dxc.CanteenMngt.Vendor"%>
<%@page import="dxc.CanteenMngt.VendorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
   background-image: url('vendor.jpg');
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
<form method="get" action="VendorAdd.jsp">
		<center>
			Vendor Name :
			<input type="text" name="VEN_NAME" /> <br/><br/> 
			
			Vendor Phno :
			<input type="number" name="VEN_PHN_NO" /> <br/><br/> 
			
			 User Name :
			<input type="text" name="VEN_USERNAME" /> <br/><br/> 
			
			 Password :
			<input type="text" name="VEN_PASSWORD" /> <br/><br/> 
			
			Email :
			<input type="text" name="VEN_EMAIL" /> <br/><br/> 
			
			<input type="submit" value="Add Vendor" /> 
		</center> 
	</form>
	<%
		if (request.getParameter("VEN_PHN_NO") != null) {
			VendorDAO dao = new VendorDAO();
			Vendor vendor = new Vendor();
			vendor.setVEN_NAME(request.getParameter("VEN_NAME"));
			vendor.setVEN_PHN_NO(Long.parseLong(request.getParameter("VEN_PHN_NO")));
			vendor.setVEN_USERNAME(request.getParameter("VEN_USERNAME"));
			vendor.setVEN_PASSWORD(request.getParameter("VEN_PASSWORD"));
			vendor.setVEN_EMAIL(request.getParameter("VEN_EMAIL"));
			dao.addVendor(vendor);
	
	
		}
	%>
	</div>
	</center>
	
</body>
</html>