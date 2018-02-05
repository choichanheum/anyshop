package com.syu.anyshop.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.syu.anyshop.login.LoginInfo;
import com.syu.anyshop.login.LoginService;

import net.sf.json.JSONObject;

@Controller
public class LoginController {
	private static final Logger logger = 
			LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginService loginService;
	
	//로그인
	@RequestMapping(value = "login.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String main(Model model) {
		logger.info("Welcome loginController home! "+new Date());
		model.addAttribute("hello", "hello i'm heum");
		return "login/login";
	}
	
	//로그인 결과
	@RequestMapping(value = "loginAfter.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String loginCheck(Model model, LoginInfo loginInfo, HttpServletRequest request) {
		logger.info("Welcome LoginController loginAf! "+ new Date());
               
        if((loginInfo.getId() != null && !loginInfo.getId().equals("")
                && loginInfo.getPw() != null && !loginInfo.getPw().equals(""))){
             
        		boolean check = loginService.loginCheck(loginInfo);
        		logger.info("체크값 확인---- "+ check);
        		
            if(check == true){
            	logger.info("Welcome LoginController loginAf!---- "+ check);
            	
            	LoginInfo loginInfo2 = loginService.viewMember(loginInfo);
                request.getSession().setAttribute("login", 0);
                request.getSession().setMaxInactiveInterval(30*60); //10분
                
                request.getSession().setAttribute("id", loginInfo2.getId());
                logger.info("세션값 확인!---- "+ request.getSession().getAttribute("id"));
                request.getSession().setAttribute("name", loginInfo2.getName());
                request.getSession().setAttribute("loginInfo", loginInfo2);
                return "forward:/main.do";
            }
            if(check == false){
            	 request.getSession().invalidate();
            	logger.info("Welcome LoginController loginAf!---- "+ check);
            	return "redirect:/login.do";
            }   
        }
        logger.info("확인용");
        return "forward:/main.do";
    }
	
	//로그아웃
	@RequestMapping(value = "logout.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(Model model, HttpServletRequest request) {
		logger.info("Welcome LoginController loginout! "+ new Date());
		request.getSession().invalidate();
		return "home/home";
	}
	
	//회원가입
	@RequestMapping(value = "regi.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String regi(Model model) {
		logger.info("Welcome LoginController regi! "+ new Date());
		return "regi";
	}
	
	//회원가입 결과
	@RequestMapping(value = "regiAfter.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String regiAfter(LoginInfo loginInfo, Model model) {
		logger.info("Welcome LoginController regiAfter! "+ new Date());
		logger.info("Welcome LoginController --------- "+ loginInfo);
		
		loginService.addMember(loginInfo);
		return "redirect:/main.do";
	}
	
	//마이페이지
	@RequestMapping(value = "mypage.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String mypage(Model model) {
		logger.info("Welcome LoginController mypage! "+ new Date());
		return "login/mypage";
	}
	
	//내정보 수정
	@RequestMapping(value = "update_info.do", 
	method = {RequestMethod.GET,RequestMethod.POST})
	public String update_info(LoginInfo loginInfo, Model model, HttpServletRequest request) {
		logger.info("Welcome LoginController update_info! "+ new Date());
		logger.info("Welcome LoginController update_info! "+ loginInfo.getId());
		
		return "login/updateMyInfo";
	}
	
	//내정보 수정 결과
	@RequestMapping(value = "updateAfter.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String updateAfter(LoginInfo loginInfo, Model model, HttpServletRequest request) {
		logger.info("Welcome LoginController updateAfter! "+ new Date());
		loginService.updateMember(loginInfo);
		request.getSession().invalidate();
		
		return "redirect:/main.do";
	}
	
	//회원 탈퇴
	@RequestMapping(value = "delete.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String delete(@RequestParam String id, Model model, HttpServletRequest request) {
		logger.info("Welcome LoginController delete! "+ new Date());
		logger.info("Welcome LoginController delete! "+ id);
		loginService.deleteMember(id);
		request.getSession().invalidate();
		return "redirect:/login.do";
	}  
	
	//아이디 찾기
	@RequestMapping(value = "findId.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String findId(Model model) {
		logger.info("Welcome LoginController findId! "+ new Date());
		return "login/findId";
	}  
	
	//아이디 찾기 결과
	@RequestMapping(value = "findIdAfter.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String findIdAfter(@RequestParam String name, @RequestParam String phone, Model model) {
		logger.info("Welcome LoginController findIdAfter! "+ new Date());
		logger.info("Welcome LoginController findIdAfter! "+ name);
		logger.info("Welcome LoginController findIdAfter! "+ phone);
		String id = loginService.findId(name, phone);
		logger.info("아이디 찾기완료: "+ id);
		
		if( id != null) {
			return "redirect:/main.do?id="+id;
		}
		else {
			return "login/finId?id=noInfo";
		}
	}  
	
	//비밀번호 찾기
	@RequestMapping(value = "findPw.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String findPw(Model model) {
		logger.info("Welcome LoginController findId! "+ new Date());
		return "login/findPw";
	}  
	
	//비밀번호 찾기 결과
	@RequestMapping(value = "findPwAfter.do", 
			method = {RequestMethod.GET,RequestMethod.POST})
	public String findPwAfter(@RequestParam String id, @RequestParam String name, @RequestParam String studentId, Model model) {
		logger.info("Welcome LoginController findPwAfter! "+ new Date());
		logger.info("Welcome LoginController findPwAfter! "+ id);
		logger.info("Welcome LoginController findPwAfter! "+ name);
		logger.info("Welcome LoginController findPwAfter! "+ studentId);
		String pw = loginService.findPw(id, name, studentId);
		logger.info("비밀번호 찾기완료: "+ pw);
		return "redirect:/login.do?pw="+pw;
	}  
	
	
	
	// 회원가입 검증
	@RequestMapping(value = "UserCheckServlet.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> UserCheckServlet(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException{
		logger.info("Welcome LoginController UserCheckServlet! "+ new Date());
		String id= request.getParameter("id");
		logger.info(id);
		int result= loginService.userCheck(id);
		logger.info(Integer.toString(result));
		Map<String, Integer> map=new HashMap<String, Integer>();
		map.put("result", result);
		logger.info("여기 값 출력: " + map.get("result"));
		return map;
	/*	JSONObject jsonObject = JSONObject.fromObject(map);
	    PrintWriter pr= response.getWriter();
	    jsonObject.write(pr);*/
	}
	
	
}