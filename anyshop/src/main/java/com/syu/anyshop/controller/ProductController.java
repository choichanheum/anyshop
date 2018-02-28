package com.syu.anyshop.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.syu.anyshop.product.ProductInfo;
import com.syu.anyshop.product.ProductService;

@Controller
public class ProductController {
	private static final Logger logger = 
			LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductService productService;
       
	// 남자 상품 전체 목록
	@RequestMapping(value = "productManAllList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String productManAllList(Model model, @RequestParam String product_kinds) {
		logger.info("Welcome productController productManAllList! " + new Date());
		
		List<ProductInfo> list= new ArrayList<ProductInfo>();
		
		logger.info("선택된 kinds: "+ product_kinds);
		list= productService.productManAllListView(product_kinds);
		
		model.addAttribute("productList",list);
		
		System.out.println("왜 인트형? "+list.get(0).getProduct_kinds());
		
		return "product/productManAllList";
	}
	
}
