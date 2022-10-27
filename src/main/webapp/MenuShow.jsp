<%@page import="dxc.CanteenMngt.Menu"%>
<%@page import="java.util.List"%>
<%@page import="dxc.CanteenMngt.MenuDAO"%>
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
  height:525px;
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
<%
	MenuDAO dao = new MenuDAO();
	List<Menu> menuList = dao.showMenu();
%>
	<table border="3" align="center">
		<tr>
			<th>MENUID</th>
			<th>MENU ITEM</th>
			<th>MENU PRICE</th>
			<th>MENU CALORIES</th>
			<th>MENU SPECIALITY</th>
			
		</tr>
<%
	for(Menu menu : menuList) {
%>
	<tr>
		<td><%=menu.getMEN_ID() %>  </td>
		<td><%=menu.getMEN_ITEM() %> </td>
		<td><%=menu.getMEN_PRICE() %> </td>
		<td><%=menu.getMEN_CALORIES() %> </td>
		<td><%=menu.getMEN_SPECIALITY() %> </td>
		
		
		
		
	</tr>
<%
	}
%>
	</table>
	<br/><br/> 
	<a href="MenuAdd.jsp">Add menu</a>
	</div>
	</center>
</body>
</html>