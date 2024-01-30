package kr.co.green.product.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.green.product.model.dao.ProductDAO;
import kr.co.green.product.model.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	ProductDAO productDao;
	
	@Override
	public ProductDTO productDetail(int p_idx) {
		ProductDTO product = new ProductDTO();
		product = productDao.productDetail(sqlSession, p_idx);
		return product;
	}
}
