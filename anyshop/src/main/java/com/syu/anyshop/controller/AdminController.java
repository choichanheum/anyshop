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
import org.springframework.web.bind.annotation.RequestParam;

import com.syu.anyshop.admin.AdminService;
import com.syu.anyshop.login.LoginInfo;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService adminService;

	
	@RequestMapping(value = "admin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String main(Model model, HttpServletRequest request) {
		logger.info("Welcome adminController admin! " + new Date());
		
		return "admin/admin2/admin";
	}


	// 회원 전체 목록 
	@RequestMapping(value = "showAllMember.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String showMembert(Model model, HttpServletRequest request) {
		logger.info("Welcome adminController showAllMember! "+ new Date());
		

		List<LoginInfo> list= new ArrayList<LoginInfo>();
		list= adminService.showAllMember();
		model.addAttribute("list",list);
		
		return "admin/admin2/memberView";
	}
	
	// 회원 이름 검색  
		@RequestMapping(value = "searchMember.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String searchMember(Model model, HttpServletRequest request, @RequestParam String id) {
			logger.info("Welcome adminController searchMember! "+ new Date());
			

			LoginInfo userInfo= new LoginInfo();
			userInfo= adminService.searchMember(id);
			model.addAttribute("userInfo",userInfo);
			System.out.println(userInfo.getAddress());
			
			return "admin/admin2/searchMember";
		}
		
		// 회원 정보 수정  
		@RequestMapping(value = "updateMember.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String updateMember(Model model, HttpServletRequest request, @RequestParam String id) {
			logger.info("Welcome adminController updateMember! "+ new Date());
			
			LoginInfo userInfo= new LoginInfo();
			userInfo= adminService.searchMember(id);
			model.addAttribute("userInfo",userInfo);
			System.out.println(userInfo.getName());

			return "admin/admin2/updateMember";
		}

		//내정보 수정 결과
		@RequestMapping(value = "updateMemberAfter.do", 
				method = {RequestMethod.GET,RequestMethod.POST})
		public String updateMemberAfter(LoginInfo loginInfo, Model model, HttpServletRequest request) {
			logger.info("Welcome adminnController updateMemberAfter! "+ new Date());
			
			adminService.updateMember(loginInfo);
			System.out.println(loginInfo.getName());
			model.addAttribute("userInfo",loginInfo);
			
			return "admin/admin2/searchMember";
		}
		
		//회원 등록페이지(관리자 권한)
		@RequestMapping(value = "regiMember.do", 
				method = {RequestMethod.GET,RequestMethod.POST})
		public String regiMember(Model model) {
			logger.info("Welcome adminnController regiMember! "+ new Date());
			
			return "admin/admin2/regiMember";
		}
		
		//회원 등록페이지(관리자 권한)
		@RequestMapping(value = "regiMemberAfter.do", 
				method = {RequestMethod.GET,RequestMethod.POST})
		public String regiMemberAfter(Model model, LoginInfo loginInfo) {
			logger.info("Welcome adminnController regiMember! "+ new Date());
			
			adminService.regiMember(loginInfo);
			return "admin/admin2/memberView";
		}
	
	
}
