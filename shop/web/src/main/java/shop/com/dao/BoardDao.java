package shop.com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.com.app.dto.NoticeBean;
import shop.com.app.dto.QnaBean;
import shop.com.app.dto.ReviewBean;

@Repository
public class BoardDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public List<NoticeBean> selectNotice() {
		return this.getSqlSession().selectList("selectNotice");
	}

	public NoticeBean selectNoticeInfo(int n_no) {
		NoticeBean notice = null;
		notice = this.getSqlSession().selectOne("selectNoticeInfo", n_no);
		return notice;
	}

	public void updateNotice(NoticeBean notice) {
		this.getSqlSession().update("updateNotice", notice);
	}

	public void insertNotice(NoticeBean notice) {
		this.getSqlSession().insert("insertNotice", notice);
	}

	public void deleteNotice(int n_no) {
		this.getSqlSession().delete("deleteNotice", n_no);
	}

	public List<NoticeBean> selectNoticeSearch(HashMap<String, Object> map) throws Exception {
		return this.getSqlSession().selectList("selectNoticeSearch", map);
	}

	public List<ReviewBean> selectReview() {
		return this.getSqlSession().selectList("selectReview");
	}

	public ReviewBean selectReviewInfo(int r_no) {
		ReviewBean review = null;
		review = this.getSqlSession().selectOne("selectReviewInfo", r_no);
		return review;
	}

	public void insertReview(ReviewBean review) {
		this.getSqlSession().insert("insertReview", review);
	}

	public void updateReview(ReviewBean review) {
		this.getSqlSession().update("updateReview", review);
	}

	public void updateReviewComments(HashMap<String, Object> map) {
		this.getSqlSession().update("updateReviewComments", map);
	}

	public void deleteReview(int r_no) {
		this.getSqlSession().delete("deleteReview", r_no);
	}

	public List<ReviewBean> selectReviewSearch(HashMap<String, Object> map) throws Exception {
		return this.getSqlSession().selectList("selectReviewSearch", map);
	}

	public List<QnaBean> selectQna() {
		return this.getSqlSession().selectList("selectQna");
	}

	public QnaBean selectQnaInfo(int q_no) {
		return this.getSqlSession().selectOne("selectQnaInfo", q_no);
	}

	public void insertQna(QnaBean qna) {
		this.getSqlSession().insert("insertQna", qna);
	}

	public void insertQnaReply(QnaBean qna) {
		this.getSqlSession().insert("insertQnaReply", qna);
	}

	public void updateQna(QnaBean qna) {
		this.getSqlSession().update("updateQna", qna);
	}

	public void deleteQna(int q_no) {
		this.getSqlSession().delete("deleteQna", q_no);
	}

	public List<QnaBean> selectQnaSearch(HashMap<String, Object> map) throws Exception {
		return this.getSqlSession().selectList("selectQnaSearch", map);
	}
}
