package com.syu.anyshop.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.syu.anyshop.login.LoginInfo;
import com.syu.anyshop.login.LoginService;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "main.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String main(Model model) {
		logger.info("Welcome mainController home! " + new Date());
		model.addAttribute("hello", "hello i'm heum");
		System.out.println("����^^");
		System.out.println("하위^^");
		System.out.println("하위^^");
		System.out.println("최찬흠^^");
		System.out.println("홍정선^^");
		return "home/home";
	}

}
