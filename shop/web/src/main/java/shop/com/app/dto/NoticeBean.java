package shop.com.app.dto;

public class NoticeBean {
	private int n_no; // 공지번호
	private String n_title; // 공지제목
	private String n_contents; // 공지내용
	private String n_regdate; // 공지 작성일

	public int getN_no() {
		return n_no;
	}

	public void setN_no(int n_no) {
		this.n_no = n_no;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_contents() {
		return n_contents;
	}

	public void setN_contents(String n_contents) {
		this.n_contents = n_contents;
	}

	public String getN_regdate() {
		return n_regdate;
	}

	public void setN_regdate(String n_regdate) {
		this.n_regdate = n_regdate;
	}

	@Override
	public String toString() {
		return "NoticeBean [n_no=" + n_no + ", n_title=" + n_title + ", n_contents=" + n_contents + ", n_regdate="
				+ n_regdate + "]";
	}

}
