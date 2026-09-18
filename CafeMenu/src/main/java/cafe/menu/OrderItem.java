package cafe.menu;

public class OrderItem {
	private String menuName;
	private int qty;
	private int price;
	public OrderItem(String menuName, int qty, int price) {
		super();
		this.menuName = menuName;
		this.qty = qty;
		this.price = price;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
