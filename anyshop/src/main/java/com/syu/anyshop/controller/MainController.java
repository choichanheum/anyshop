package com.syu.anyshop.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.syu.anyshop.login.LoginService;
import com.syu.anyshop.wishlist.WishListInfo;
import com.syu.anyshop.wishlist.WishListService;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	
	@Autowired
	private WishListService wishlistService;

	
	@RequestMapping(value = "test.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String test(Model model) {
		logger.info("Welcome mainController test! " + new Date());
		return "test1";
	}

	// 장바구니 조회
	@RequestMapping(value = "wishlist.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String cart(Model model, HttpServletRequest request) {
		logger.info("Welcome mainController 장바구니 조회! " + new Date());
		
		List<WishListInfo> wishlist= wishlistService.viewWishList((String)request.getSession().getAttribute("id"));

		
		logger.info("Welcome 장바구니조회 이미지: " + wishlist.get(0).getImage());
		logger.info("Welcome 장바구니조회 아이디: " + wishlist.get(0).getId());
		
		model.addAttribute("wishlist",wishlist);
				
		
		return "member/wishlist";
	}
	
}
