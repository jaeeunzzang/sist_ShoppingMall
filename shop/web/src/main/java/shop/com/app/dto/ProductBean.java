package shop.com.app.dto;

public class ProductBean {
	private int p_no;
	private String p_name;
	private int price;
	private String info;
	private String category;
	private int hit;
	private String p_fileName;
	private String regdate;

	@Override
	public String toString() {
		return "ProductBean [p_no=" + p_no + ", p_name=" + p_name + ", price=" + price + ", info=" + info
				+ ", category=" + category + ", hit=" + hit + ", p_fileName=" + p_fileName + ", regdate=" + regdate
				+ "]";
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getP_fileName() {
		return p_fileName;
	}

	public void setP_fileName(String p_fileName) {
		this.p_fileName = p_fileName;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

}
