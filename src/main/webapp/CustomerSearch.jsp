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
    background-image: url(/C:\images/customer);
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
<form method="get" action="AddCustomer.jsp">
<%
    int CUS_ID = Integer.parseInt(request.getParameter("CUS_ID"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","root");
	String cmd = "select * from Customer where CUS_ID=?";
	
	PreparedStatement pst = con.prepareStatement(cmd);
	pst.setInt(1, CUS_ID);
	ResultSet rs = pst.executeQuery();
	if (rs.next()) {
%>
	CUS_NAME : <%=rs.getString("CUS_NAME") %> <br/><br/>
	CUS_PHN_NO : <%=rs.getLong("CUS_PHN_NO") %> <br/><br/>
	CUS_USERNAME : <%=rs.getString("CUS_USERNAME") %> <br/><br/> 
	CUS_PASSWORD : <%=rs.getString("CUS_PASSWORD") %> <br/><br/> 
	CUS_EMAIL : <%=rs.getString("CUS_EMAIL") %> <br/><br/> 
	
		
<%
	}
%>
</form>
</div>
</center>

</body>
</html>