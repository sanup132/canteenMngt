<%@page import="dxc.CanteenMngt.Menu"%>
<%@page import="dxc.CanteenMngt.MenuDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
   background-image: url('menu.jpg');
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
<form method="get" action="MenuAdd.jsp">
		<center>
			Menu Item : 
			<input type="text" name="MEN_ITEM" /> <br/><br/>
			
			Menu Price :
			<input type="number" name="MEN_PRICE" /> <br/><br/> 
			
			Menu Calories :
			<input type="number" name="MEN_CALORIES" /> <br/><br/> 
			
			Menu Speciality:
			
			<select name="MEN_SPECIALITY">
				<option value="VEG">VEG</option>
				<option value="NON-VEG">NON-VEG</option>
				
			</select> <br/><br/>
			
			<input type="submit" value="add Menu" /> 
			<a href="MenuSearch.html">Search menu</a>
		</center> 
	</form>
	<%
		if (request.getParameter("MEN_PRICE") != null) {
			MenuDAO dao = new MenuDAO(); 
			Menu menu = new Menu();
			menu.setMEN_ITEM(request.getParameter("MEN_ITEM"));
			menu.setMEN_PRICE(Integer.parseInt(request.getParameter("MEN_PRICE")));
			menu.setMEN_CALORIES(Double.parseDouble(request.getParameter("MEN_CALORIES")));
			menu.setMEN_SPECIALITY(request.getParameter("MEN_SPECIALITY"));
			dao.addMenu(menu);
			
	
		}
	%>
	</div>
	</center>
</body>
</html>