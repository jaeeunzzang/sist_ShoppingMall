package shop.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import shop.com.app.dto.MemberBean;

public class MemberDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public boolean loginCheck(MemberBean bean) {
		String result = getSqlSession().selectOne("loginCheck", bean);
		// System.out.println("dao"+bean);
		// System.out.println("result"+result);
		return (result == null) ? false : true;
	}

	public int idCheck(String id) {
		// int result =
		int result = getSqlSession().selectOne("idCheck", id);
		return result;
	}

	public void signUp(MemberBean bean) {
		this.getSqlSession().insert("signUp", bean);
	}

	public List<MemberBean> memberInfoList() { // 2020-12-08
		return this.getSqlSession().selectList("memberInfoList");
	}

	public List<MemberBean> memberInfo(Object text) { // 관리자 유저관리페이지
		return this.getSqlSession().selectList("memberInfo", text);
	}

	public List<MemberBean> memberSort(int num) {
		return this.getSqlSession().selectList("memberSortList", num);
	}

	public MemberBean memberDetail(String id) {
		return this.getSqlSession().selectOne("memberDetail", id);
	}
}
