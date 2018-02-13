package com.syu.anyshop.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.syu.anyshop.admin.AdminService;
import com.syu.anyshop.login.LoginInfo;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "admin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String main(Model model, HttpServletRequest request) {
		logger.info("Welcome adminController home! " + new Date());
		
		return "admin/admin";
	}

	//로그아웃
	@RequestMapping(value = "logout.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(Model model, HttpServletRequest request) {
		logger.info("Welcome adminController logout! "+ new Date());
		request.getSession().invalidate();
		
		return "home/home";
	}
	
	// 회원 전체 목록 
	@RequestMapping(value = "showMember.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String showMembert(Model model, HttpServletRequest request) {
		logger.info("Welcome adminController memberAllList! "+ new Date());
		
		System.out.println("김영민");
		List<LoginInfo> list= new ArrayList<LoginInfo>();
		list= adminService.showMembert();
		
		return "admin/memberView";
	}

	
	
}
