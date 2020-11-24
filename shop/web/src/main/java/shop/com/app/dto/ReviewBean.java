package shop.com.app.dto;

public class ReviewBean {
	private int r_no; // 리뷰번호
	private String m_id; // 회원아이디
	private String p_no; // 상품번호
	private String r_title; // 리뷰제목
	private String r_contents; // 리뷰내용
	private String r_fileName; // 리뷰 이미지
	private String r_regdate; // 리뷰 작성일
	private String r_comments; // 리뷰 답글
	private String r_job; // 새글답글 여부
	private int r_step, r_pnum, r_ref; // 리뷰 답글 순서,깊이
}