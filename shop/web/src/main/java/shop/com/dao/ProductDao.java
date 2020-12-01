package shop.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.com.app.dto.NoticeBean;
import shop.com.app.dto.ProductBean;
import shop.com.app.dto.QnaBean;
import shop.com.app.dto.ReviewBean;

@Repository
public class ProductDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public ProductBean productDetail(int p_no) {
		return this.getSqlSession().selectOne("selectProductInfo", p_no);
	}
}