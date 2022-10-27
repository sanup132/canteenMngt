package dxc.CanteenMngt;

public class Menu {
	
	private String MEN_ITEM;
	private  int MEN_PRICE;
	private double MEN_CALORIES;
	private String MEN_SPECIALITY;
	private int MEN_ID;
	
	

	

	public String getMEN_ITEM() {
		return MEN_ITEM;
	}

	public void setMEN_ITEM(String mEN_ITEM) {
		MEN_ITEM = mEN_ITEM;
	}

	public int getMEN_PRICE() {
		return MEN_PRICE;
	}

	public void setMEN_PRICE(int mEN_PRICE) {
		MEN_PRICE = mEN_PRICE;
	}

	public double getMEN_CALORIES() {
		return MEN_CALORIES;
	}

	public void setMEN_CALORIES(double mEN_CALORIES) {
		MEN_CALORIES = mEN_CALORIES;
	}

	public String getMEN_SPECIALITY() {
		return MEN_SPECIALITY;
	}

	public void setMEN_SPECIALITY(String mEN_SPECIALITY) {
		MEN_SPECIALITY = mEN_SPECIALITY;
	}

	

	public int getMEN_ID() {
		return MEN_ID;
	}

	public void setMEN_ID(int mEN_ID) {
		MEN_ID = mEN_ID;
	}

	@Override
	public String toString() {
		return "Menu [MEN_ITEM=" + MEN_ITEM + ", MEN_PRICE=" + MEN_PRICE + ", MEN_CALORIES=" + MEN_CALORIES
				+ ", MEN_SPECIALITY=" + MEN_SPECIALITY +  ", MEN_ID=" + MEN_ID + "]";
	}

	public Menu() {
		// TODO Auto-generated constructor stub
	}

}

