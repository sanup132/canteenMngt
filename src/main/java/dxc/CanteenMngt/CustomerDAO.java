package dxc.CanteenMngt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

	Connection con;
	PreparedStatement pst;
	
	

	
	public String addCustomer(Customer customer) throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "Insert into Customer(CUS_NAME,CUS_PHN_NO,CUS_USERNAME,CUS_PASSWORD,CUS_EMAIL) "
				+ " values(?,?,?,?,?)";
		pst = con.prepareStatement(cmd);
		pst.setString(1, customer.getCUS_NAME());
		pst.setLong(2, customer.getCUS_PHN_NO());
		pst.setString(3, customer.getCUS_USERNAME());
		pst.setString(4, customer.getCUS_PASSWORD());
		pst.setString(5, customer.getCUS_EMAIL());
		pst.executeUpdate();
		return "Record Inserted...";
	}

	
	public Customer searchEmploy(int CUS_ID) throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from Customer  where CUS_ID=?";
		pst = con.prepareStatement(cmd);
		pst.setInt(1, CUS_ID);
		ResultSet rs = pst.executeQuery();
		Customer customer = null;
		if (rs.next()) {
			customer = new Customer();
			customer.setCUS_ID(rs.getInt("CUS_ID"));
			customer.setCUS_NAME(rs.getString("CUS_NAME"));
			customer.setCUS_PHN_NO(rs.getLong("CUS_PHN_NO"));
			customer.setCUS_USERNAME(rs.getString("CUS_USERNAME"));
			customer.setCUS_PASSWORD(rs.getString("CUS_PASSWORD"));
			customer.setCUS_EMAIL(rs.getString("CUS_EMAIL"));			
		}
		return customer;
		
	}

	public List<Customer> showCustomer() throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from Customer";
		pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		List<Customer> customerList = new ArrayList<Customer>();
		Customer customer = null;
		while(rs.next()) {
			customer = new Customer();
			customer.setCUS_ID(rs.getInt("CUS_ID"));
			customer.setCUS_NAME(rs.getString("CUS_NAME"));
			customer.setCUS_PHN_NO(rs.getLong("CUS_PHN_NO"));
			customer.setCUS_USERNAME(rs.getString("CUS_USERNAME"));
			customer.setCUS_PASSWORD(rs.getString("CUS_PASSWORD"));
			customer.setCUS_EMAIL(rs.getString("CUS_EMAIL"));
			customerList.add(customer);
		}
		return customerList;
	}
	
	
	

}