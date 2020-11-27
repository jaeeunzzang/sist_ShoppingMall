package shop.com.dao;

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
}