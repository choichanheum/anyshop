package com.syu.anyshop.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDao loginDao;
	
	@Override
	public boolean loginCheck(LoginInfo loginInfo) {
		return loginDao.loginCheck(loginInfo);
	}

	@Override
	public void addMember(LoginInfo loginInfo) {
		loginDao.addMember(loginInfo);
	}

	@Override
	public LoginInfo viewMember(LoginInfo loginInfo) {
		return loginDao.viewMember(loginInfo);
	}

	@Override
	public void updateMember(LoginInfo loginInfo) {
		loginDao.updateMember(loginInfo);
	}

	@Override
	public void deleteMember(String id) {
		loginDao.deleteMember(id);
	}

	@Override
	public String findId(String name, String phone) {
		return loginDao.findId(name, phone);
	}

	@Override
	public String findPw(String id, String name, String studentId) {
		return loginDao.findPw(id, name, studentId);
	}

	@Override
	public int userCheck(String id) {
		return loginDao.userCheck(id);
	}

	@Override
	public String pwCheck(String id) {
		return loginDao.pwCheck(id);
	}


}
