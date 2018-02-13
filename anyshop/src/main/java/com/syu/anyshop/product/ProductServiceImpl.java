package com.syu.anyshop.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;

	@Override
	public List<ProductInfo> productList() {
		return productDao.productList();
	}
	

}
