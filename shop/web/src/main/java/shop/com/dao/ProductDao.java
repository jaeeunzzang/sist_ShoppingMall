package shop.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.com.app.dto.ProductBean;
import shop.com.app.dto.ProductDetailBean;

@Repository
public class ProductDao extends SqlSessionDaoSupport {

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public List<ProductBean> productList() {
		return this.getSqlSession().selectList("selectProductList");
	}

	public ProductBean productInfo(int p_no) {
		return this.getSqlSession().selectOne("selectProductInfo", p_no);
	}

	public List<ProductDetailBean> productDetail(int p_no) {
		return this.getSqlSession().selectList("selectProductDetail", p_no);
	}
}
