package com.syu.anyshop.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syu.anyshop.login.LoginInfo;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;

	@Override
	public List<LoginInfo> showAllMember() {
	
		return adminDao.showAllMember();
	}

	@Override
	public LoginInfo searchMember(String id) {

		return adminDao.searchMember(id);
	}

	@Override
	public void updateMember(LoginInfo loginInfo) {
		
		adminDao.updateMember(loginInfo);
		
		return; 
		
	}

	@Override
	public void regiMember(LoginInfo loginInfo) {
		adminDao.regiMember(loginInfo);
		
		return;
	}
}
