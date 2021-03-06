package shop.com.app.dto;

public class ReviewBean {
	private int r_no; // 리뷰번호
	private String m_id; // 회원아이디
	private String p_no; // 상품번호
	private String p_name; // 조인해서 가져올 상품이름
	private String r_title; // 리뷰제목
	private String r_contents; // 리뷰내용
	private String r_fileName; // 리뷰 이미지
	private String r_regdate; // 리뷰 작성일
	private String r_comments; // 리뷰 답글

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getP_no() {
		return p_no;
	}

	public void setP_no(String p_no) {
		this.p_no = p_no;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public String getR_contents() {
		return r_contents;
	}

	public void setR_contents(String r_contents) {
		this.r_contents = r_contents;
	}

	public String getR_fileName() {
		return r_fileName;
	}

	public void setR_fileName(String r_fileName) {
		this.r_fileName = r_fileName;
	}

	public String getR_regdate() {
		return r_regdate;
	}

	public void setR_regdate(String r_regdate) {
		this.r_regdate = r_regdate;
	}

	public String getR_comments() {
		return r_comments;
	}

	public void setR_comments(String r_comments) {
		this.r_comments = r_comments;
	}

	@Override
	public String toString() {
		return "ReviewBean [r_no=" + r_no + ", m_id=" + m_id + ", p_no=" + p_no + ", p_name=" + p_name + ", r_title="
				+ r_title + ", r_contents=" + r_contents + ", r_fileName=" + r_fileName + ", r_regdate=" + r_regdate
				+ ", r_comments=" + r_comments + "]";
	}

}
