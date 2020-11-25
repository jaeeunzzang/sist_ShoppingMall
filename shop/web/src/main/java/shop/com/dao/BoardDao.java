package shop.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.com.app.dto.NoticeBean;

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
}
