package dxc.CanteenMngt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class WalletDAO {

	
	Connection con;
	PreparedStatement pst;
	
	public Wallet searchWallet(int CUS_ID) throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from Wallet  where CUS_ID=?";
		pst = con.prepareStatement(cmd);
		pst.setInt(1, CUS_ID);
		ResultSet rs = pst.executeQuery();
		
	    Wallet wallet = null;
		if (rs.next()) {
			wallet = new Wallet();
			wallet.setCUS_ID(rs.getInt("CUS_ID"));
			wallet.setWAL_AMOUNT(rs.getDouble("WAL_AMOUNT"));			
			wallet.setWAL_SOURCE(rs.getString("WAL_SOURCE"));
			
		}
		return wallet;
	}

	
	public List<Wallet> showWallet() throws ClassNotFoundException, SQLException {
		con = ConnectionHelper.getConnection();
		String cmd = "select * from Wallet";
		pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		List<Wallet> walletList = new ArrayList<Wallet>();
		Wallet wallet = null;
		while(rs.next()) {
			wallet = new Wallet();
			wallet.setCUS_ID(rs.getInt("CUS_ID"));
			wallet.setWAL_AMOUNT(rs.getDouble("WAL_AMOUNT"));
			wallet.setWAL_SOURCE(rs.getString("WAL_SOURCE"));
			walletList.add(wallet);
		}
		return walletList;
	}

}
