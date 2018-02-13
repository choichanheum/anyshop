package com.syu.anyshop.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.syu.anyshop.login.LoginInfo;

public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;

	@Override
	public List<LoginInfo> showMembert() {
	
		return adminDao.AllMemberList();
	}
}
