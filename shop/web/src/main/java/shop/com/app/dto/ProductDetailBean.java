package shop.com.app.dto;

public class ProductDetailBean {
	private int p_no; // 상품번호
	private int p_size; // 사이즈
	private int qtt; // 수량
	private String p_color; // 컬러

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getP_size() {
		return p_size;
	}

	public void setP_size(int p_size) {
		this.p_size = p_size;
	}

	public int getQtt() {
		return qtt;
	}

	public void setQtt(int qtt) {
		this.qtt = qtt;
	}

	public String getP_color() {
		return p_color;
	}

	public void setP_color(String p_color) {
		this.p_color = p_color;
	}

	@Override
	public String toString() {
		return p_color + "," + p_size + "," + qtt;
	}

}
