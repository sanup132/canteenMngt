package dxc.CanteenMngt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class MenuDAO {

	
	Connection con;
	PreparedStatement pst;
	
	public String updateMenu(Menu menu) throws ClassNotFoundException, SQLException {
		Menu menuFound = searchMenu(menu.getMEN_ID());
		if (menuFound!=null) {
			String cmd = "Update Menu set MEN_ITEM=?,  MEN_SPECIALITY=?, "
					+ "MEN_CALORIES=?, MEN_PRICE=? Where MEN_ID=?";
					
			pst = con.prepareStatement(cmd);
			pst.setString(1, menu.getMEN_ITEM());
			pst.setInt(2, menu.getMEN_PRICE());
			pst.setDouble(3, menu.getMEN_CALORIES());
			pst.setString(4, menu.getMEN_SPECIALITY());
			pst.setInt(5, menu.getMEN_ID());
			pst.executeUpdate();
			return "Record Updated...";
		}
		return "Record Not Found...";
	}

	
	public String deleteMenu(int MEN_ID) throws ClassNotFoundException, SQLException {
		Menu menu = searchMenu(MEN_ID);
		if (menu!=null) {
			con = ConnectionHelper.getConnection();
			String cmd = "Delete From Menu where MEN_ID=?";
			pst = con.prepareStatement(cmd);
			pst.setInt(1, MEN_ID);
			pst.executeUpdate();
			return "Record Deleted...";
		}
		return "Record Not Found...";
	}
		
		
	public String addMenu(Menu menu) throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "Insert into Menu(MEN_ITEM,MEN_PRICE,MEN_CALORIES,MEN_SPECIALITY) "
				+ " values(?,?,?,?)";
		pst = con.prepareStatement(cmd);
		pst.setString(1, menu.getMEN_ITEM());
		pst.setInt(2, menu.getMEN_PRICE());
		pst.setDouble(3, menu.getMEN_CALORIES());
		pst.setString(4, menu.getMEN_SPECIALITY());
		pst.executeUpdate();
		return "Record Inserted...";
	}

	
	public Menu searchMenu(int MEN_ID) throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from Menu  where MEN_ID=?";
		pst = con.prepareStatement(cmd);
		pst.setInt(1, MEN_ID);
		ResultSet rs = pst.executeQuery();
		Menu menu = null;
		if (rs.next()) {
			menu = new Menu();
			menu.setMEN_ID(rs.getInt("MEN_ID"));
			menu.setMEN_ITEM(rs.getString("MEN_ITEM"));
			menu.setMEN_PRICE(rs.getInt("MEN_PRICE"));
			menu.setMEN_CALORIES(rs.getDouble("MEN_CALORIES"));
			menu.setMEN_SPECIALITY(rs.getString("MEN_SPECIALITY"));	
			
		}
		return menu;
	}

	
	public List<Menu> showMenu() throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from Menu";
		pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		List<Menu> menuList = new ArrayList<Menu>();
		Menu menu = null;
		while(rs.next()) {
			menu = new Menu();
			menu.setMEN_ID(rs.getInt("MEN_ID"));
			menu.setMEN_ITEM(rs.getString("MEN_ITEM"));
			menu.setMEN_PRICE(rs.getInt("MEN_PRICE"));
			menu.setMEN_CALORIES(rs.getDouble("MEN_CALORIES"));
			menu.setMEN_SPECIALITY(rs.getString("MEN_SPECIALITY"));
			menuList.add(menu);
		}
		return menuList;
	}

}
