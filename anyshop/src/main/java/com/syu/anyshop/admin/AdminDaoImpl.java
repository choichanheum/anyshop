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
	public List<LoginInfo> showAllMember() {
		
		return sqlSession.selectList(ns+"showAllMember");
	}

	@Override
	public LoginInfo searchMember(String id) {

		return sqlSession.selectOne(ns+"searchMember", id);
	}

	@Override
	public void updateMember(LoginInfo loginInfo) {
		
		sqlSession.update(ns+"updateMember", loginInfo);
		return;
	}

	@Override
	public void regiMember(LoginInfo loginInfo) {
		sqlSession.insert(ns+"regiMember", loginInfo);
		return;
		
	}


}
