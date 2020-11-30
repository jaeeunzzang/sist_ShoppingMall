package shop.com.app.dto;

public class QnaBean {
	private int q_no; // 문의번호
	private String m_id; // 회원아이디
	private String q_title; // 문의제목
	private String q_contents; // 문의내용
	private String q_regdate; // 문의 작성일
	private int q_pnum; // 부모번호
	private int p_no;// 상품번호
	private String state; // 새글답글여부
	private String secret; // 비밀글여부
	private String p_fileName;// 상품이미지 - db엔 없고 조인으로 받아올것

	public int getQ_no() {
		return q_no;
	}

	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_contents() {
		return q_contents;
	}

	public void setQ_contents(String q_contents) {
		this.q_contents = q_contents;
	}

	public String getQ_regdate() {
		return q_regdate;
	}

	public void setQ_regdate(String q_regdate) {
		this.q_regdate = q_regdate;
	}

	public int getQ_pnum() {
		return q_pnum;
	}

	public void setQ_pnum(int q_pnum) {
		this.q_pnum = q_pnum;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public String getP_fileName() {
		return p_fileName;
	}

	public void setP_fileName(String p_fileName) {
		this.p_fileName = p_fileName;
	}

	@Override
	public String toString() {
		return "QnaBean [q_no=" + q_no + ", m_id=" + m_id + ", q_title=" + q_title + ", q_contents=" + q_contents
				+ ", q_regdate=" + q_regdate + ", q_pnum=" + q_pnum + ", p_no=" + p_no + ", state=" + state
				+ ", secret=" + secret + ", p_fileName=" + p_fileName + "]";
	}

}
