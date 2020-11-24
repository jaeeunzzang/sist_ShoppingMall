package shop.com.app.dto;

public class QnaBean {
	private int q_no; // 문의번호
	private String m_id; // 회원아이디
	private String q_title; // 문의제목
	private String q_contents; // 문의내용
	private String q_fileName; // 문의 이미지
	private String q_regdate; // 문의 작성일
	private String q_comments; // 문의 답글
	private int q_step, q_pnum, q_ref; // 문의 답글 순서,깊이
}
