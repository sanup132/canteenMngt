package dxc.CanteenMngt;

public class Vendor {
	private  int VEN_ID;
	private String VEN_NAME;
	private  long VEN_PHN_NO;
	private String VEN_USERNAME;
	private String  VEN_PASSWORD;
	private String VEN_EMAIL;

	
	public int getVEN_ID() {
		return VEN_ID;
	}


	public void setVEN_ID(int vEN_ID) {
		VEN_ID = vEN_ID;
	}


	public String getVEN_NAME() {
		return VEN_NAME;
	}


	public void setVEN_NAME(String vEN_NAME) {
		VEN_NAME = vEN_NAME;
	}


	public long getVEN_PHN_NO() {
		return VEN_PHN_NO;
	}


	public void setVEN_PHN_NO(long vEN_PHN_NO) {
		VEN_PHN_NO = vEN_PHN_NO;
	}


	public String getVEN_USERNAME() {
		return VEN_USERNAME;
	}


	public void setVEN_USERNAME(String vEN_USERNAME) {
		VEN_USERNAME = vEN_USERNAME;
	}


	public String getVEN_PASSWORD() {
		return VEN_PASSWORD;
	}


	public void setVEN_PASSWORD(String vEN_PASSWORD) {
		VEN_PASSWORD = vEN_PASSWORD;
	}


	public String getVEN_EMAIL() {
		return VEN_EMAIL;
	}


	public void setVEN_EMAIL(String vEN_EMAIL) {
		VEN_EMAIL = vEN_EMAIL;
	}


	@Override
	public String toString() {
		return "Vendor [VEN_ID=" + VEN_ID + ", VEN_NAME=" + VEN_NAME + ", VEN_PHN_NO=" + VEN_PHN_NO + ", VEN_USERNAME="
				+ VEN_USERNAME + ", VEN_PASSWORD=" + VEN_PASSWORD + ", VEN_EMAIL=" + VEN_EMAIL + "]";
	}


	public Vendor() {
		// TODO Auto-generated constructor stub
	}

}

