package com.syu.anyshop.product;

import java.util.List;

public interface ProductService {
	List<ProductInfo> productList();

	List<ProductInfo> productManAllListView(String product_kinds);
	
}
