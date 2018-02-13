package com.syu.anyshop.admin;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.syu.anyshop.login.LoginInfo;

@Repository
public class AdminDaoImpl implements AdminDao{
	String ns ="com.syu.anyshop.admin.AdminDao.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<LoginInfo> showMembert() {
		
		return sqlSession.selectList(ns+"AllMemberList");
	}


}
