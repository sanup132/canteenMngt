
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
     background-image: url('menu.jpg');
     background-color: lightblue;
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
<%
int MEN_ID = Integer.parseInt(request.getParameter("MEN_ID"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","root");
	String cmd = "select * from Menu where MEN_ID=?";
	PreparedStatement pst = con.prepareStatement(cmd);
	pst.setInt(1, MEN_ID);
	ResultSet rs = pst.executeQuery();
	if (rs.next()) {
%>
	MEN_ITEM: <%=rs.getString("MEN_ITEM") %> <br/><br/>
	MEN_PRICE: <%=rs.getInt("MEN_PRICE") %> <br/><br/> 
	MEN_CALORIES : <%=rs.getDouble("MEN_CALORIES") %> <br/><br/> 
	MEN_SPECIALITY: <%=rs.getString("MEN_SPECIALITY") %> <br/><br/> 
	
<%
	}
%>

</div>
</center>
</body>
</html>