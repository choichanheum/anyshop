package com.syu.anyshop.product;

import java.util.List;

public interface ProductDao {
	List<ProductInfo> productList();

	List<ProductInfo> productManAllListView(String product_kinds);
	
}
