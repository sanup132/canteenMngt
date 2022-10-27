<%@page import="dxc.CanteenMngt.Wallet"%>
<%@page import="java.util.List"%>
<%@page import="dxc.CanteenMngt.WalletDAO"%>
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
  height:325px;
  width:450px;
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
	WalletDAO dao = new WalletDAO();
	List<Wallet> walletList = dao.showWallet();
%>
	<table border="3" align="center">
		<tr>
			<th>CUS_ID</th>
			<th>WAL_AMOUNT</th>
			<th>WAL_SOURCE</th>
		</tr>
<%
for(Wallet wallet : walletList) {
%>
	<tr>
		<td><%=wallet.getCUS_ID() %>  </td>
		<td><%=wallet.getWAL_AMOUNT() %> </td>
		<td><%=wallet.getWAL_SOURCE() %> </td>
	</tr>
<%
}
%>

</div>
</center>
</body>
</html>