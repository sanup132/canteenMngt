package dxc.CanteenMngt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class VendorDAO {

	Connection con;
	PreparedStatement pst;
	
	public String addVendor(Vendor vendor) throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "Insert into vendor( VEN_NAME,VEN_PHN_NO,VEN_USERNAME,VEN_PASSWORD,VEN_EMAIL) "
				+ " values(?,?,?,?,?)";
		pst = con.prepareStatement(cmd);
		pst.setString(1, vendor.getVEN_NAME());
		pst.setLong(2, vendor.getVEN_PHN_NO());
		pst.setString(3, vendor.getVEN_USERNAME());
		pst.setString(4, vendor.getVEN_PASSWORD());
		pst.setString(5, vendor.getVEN_EMAIL());
		pst.executeUpdate();
		return "Record Inserted...";
	}

	
	public Vendor searchVendor(int VEN_ID) throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from vendor where VEN_ID=?";
		pst = con.prepareStatement(cmd);
		pst.setInt(1, VEN_ID);
		ResultSet rs = pst.executeQuery();
		Vendor vendor = null;
		if (rs.next()) {
			vendor = new Vendor();
			vendor.setVEN_ID(rs.getInt("VEN_ID"));
			vendor.setVEN_NAME(rs.getString("VEN_NAME"));
			vendor.setVEN_PHN_NO(rs.getLong("VEN_PHN_NO"));
			vendor.setVEN_USERNAME(rs.getString("VEN_USERNAME"));
			vendor.setVEN_PASSWORD(rs.getString("VEN_PASSWORD"));
			vendor.setVEN_EMAIL(rs.getString("VEN_EMAIL"));			
		}
		return vendor;
	}
	
	public List<Vendor> showVendor() throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from Vendor";
		pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		List<Vendor> vendorList = new ArrayList<Vendor>();
		Vendor vendor = null;
		while(rs.next()) {
			vendor = new Vendor();
			vendor.setVEN_ID(rs.getInt("VEN_ID"));
			vendor.setVEN_NAME(rs.getString("VEN_NAME"));
			vendor.setVEN_PHN_NO(rs.getLong("VEN_PHN_NO"));
			vendor.setVEN_USERNAME(rs.getString("VEN_USERNAME"));
			vendor.setVEN_PASSWORD(rs.getString("VEN_PASSWORD"));
			vendor.setVEN_EMAIL(rs.getString("VEN_EMAIL"));
			vendorList.add(vendor);
		}
		return vendorList;
	}

}