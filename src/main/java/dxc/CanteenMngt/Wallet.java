package dxc.CanteenMngt;

public class Wallet {
	private int CUS_ID;
	private double WAL_AMOUNT;
	private String WAL_SOURCE;
	
	public int getCUS_ID() {
		return CUS_ID;
	}

	public void setCUS_ID(int cUS_ID) {
		CUS_ID = cUS_ID;
	}

	public double getWAL_AMOUNT() {
		return WAL_AMOUNT;
	}

	public void setWAL_AMOUNT(double wAL_AMOUNT) {
		WAL_AMOUNT = wAL_AMOUNT;
	}

	public String getWAL_SOURCE() {
		return WAL_SOURCE;
	}

	public void setWAL_SOURCE(String wAL_SOURCE) {
		WAL_SOURCE = wAL_SOURCE;
	}

	@Override
	public String toString() {
		return "Wallet [CUS_ID=" + CUS_ID + ", WAL_AMOUNT=" + WAL_AMOUNT + ", WAL_SOURCE=" + WAL_SOURCE + "]";
	}

	public Wallet() {
		// TODO Auto-generated constructor stub
	}

}
