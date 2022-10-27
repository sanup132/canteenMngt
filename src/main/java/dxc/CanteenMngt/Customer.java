package dxc.CanteenMngt;

public class Customer {
	private int CUS_ID;
	private String CUS_NAME;
	private  long CUS_PHN_NO;
	private String CUS_USERNAME;
	private String CUS_PASSWORD;
	private String CUS_EMAIL;
	
	
	

	public String getCUS_NAME() {
		return CUS_NAME;
	}



	public void setCUS_NAME(String cUS_NAME) {
		CUS_NAME = cUS_NAME;
	}



	public long getCUS_PHN_NO() {
		return CUS_PHN_NO;
	}



	public void setCUS_PHN_NO(long cUS_PHN_NO) {
		CUS_PHN_NO = cUS_PHN_NO;
	}



	public String getCUS_USERNAME() {
		return CUS_USERNAME;
	}



	public void setCUS_USERNAME(String cUS_USERNAME) {
		CUS_USERNAME = cUS_USERNAME;
	}



	public String getCUS_PASSWORD() {
		return CUS_PASSWORD;
	}



	public void setCUS_PASSWORD(String cUS_PASSWORD) {
		CUS_PASSWORD = cUS_PASSWORD;
	}



	public String getCUS_EMAIL() {
		return CUS_EMAIL;
	}



	public void setCUS_EMAIL(String cUS_EMAIL) {
		CUS_EMAIL = cUS_EMAIL;
	}



	public int getCUS_ID() {
		return CUS_ID;
	}



	public void setCUS_ID(int cUS_ID) {
		CUS_ID = cUS_ID;
	}



	@Override
	public String toString() {
		return "Customer [CUS_NAME=" + CUS_NAME + ", CUS_PHN_NO=" + CUS_PHN_NO + ", CUS_USERNAME=" + CUS_USERNAME
				+ ", CUS_PASSWORD=" + CUS_PASSWORD + ", CUS_EMAIL=" + CUS_EMAIL + ", CUS_ID=" + CUS_ID + "]";
	}



	public Customer() {
		// TODO Auto-generated constructor stub
	}

}
