package com.syu.anyshop.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDaoImpl implements ProductDao{
	String ns ="com.syu.anyshop.product.ProductDao.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ProductInfo> productList() {
		return sqlSession.selectList(ns+"productList");
	}
	
	
}
