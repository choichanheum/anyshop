package com.syu.anyshop.login;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDaoImpl implements LoginDao{
	String ns ="com.syu.supporter.login.LoginDao.";
	@Autowired
	private SqlSession sqlSession;
	@Override
	public boolean loginCheck(LoginInfo loginInfo) {
		int count = Integer.parseInt(sqlSession.selectOne(ns+"loginCheck", loginInfo).toString()),
				totalCount = sqlSession.selectOne(ns+"totalAccount");
		if(totalCount>0) {
			if(count>0) {
				return true;
			}else {
				return false;
			}
		}
		return false;
	}

	@Override
	public void addMember(LoginInfo loginInfo) {
		sqlSession.insert(ns+"addMember", loginInfo);
	}

	@Override
	public LoginInfo viewMember(LoginInfo loginInfo) {
		return sqlSession.selectOne(ns+"viewMember", loginInfo);
	}

	@Override
	public void updateMember(LoginInfo loginInfo) {
		sqlSession.update(ns+"updateMember", loginInfo);
	}

	@Override
	public void deleteMember(String id) {
		sqlSession.delete(ns+"deleteMember", id);
	}

	@Override
	public String findId(String name, String studentId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("studentId", studentId);
		return sqlSession.selectOne(ns+"findId", map);
	}

	@Override
	public String findPw(String id, String name, String studentId) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("name", name);
		map.put("studentId", studentId);
		return sqlSession.selectOne(ns+"findPw", map);
	}

	@Override
	public int userCheck(String id) {
		return sqlSession.selectOne(ns+"userCheck", id);
	}

	@Override
	public String pwCheck(String id) {
		return sqlSession.selectOne(ns+"pwCheck", id);
	}
	
}
