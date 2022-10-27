
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
<%
	int VEN_ID = Integer.parseInt(request.getParameter("VEN_ID"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","root");
	String cmd = "select * from vendor where VEN_ID=?";
	PreparedStatement pst = con.prepareStatement(cmd);
	pst.setInt(1, VEN_ID);
	ResultSet rs = pst.executeQuery();
	if (rs.next()) {
		
%>
             
	Vendor Name : <%=rs.getString("VEN_NAME") %> <br/><br/>
	Phone No : <%=rs.getLong("VEN_PHN_NO") %> <br/><br/> 
	User Name : <%=rs.getString("VEN_USERNAME") %> <br/><br/> 
	Password : <%=rs.getString("VEN_PASSWORD") %> <br/><br/> 
	Email : <%=rs.getString("VEN_EMAIL") %>
<%
	}
%>
</div>
</center>

</body>
</html>