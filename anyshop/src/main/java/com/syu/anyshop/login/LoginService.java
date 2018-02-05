package com.syu.anyshop.login;

public interface LoginService {
	boolean loginCheck(LoginInfo loginInfo);

	void addMember(LoginInfo loginInfo);

	LoginInfo viewMember(LoginInfo loginInfo);

	void updateMember(LoginInfo loginInfo);

	void deleteMember(String id);

	String findId(String name, String phone);

	String findPw(String id, String name, String studentId);

	int userCheck(String id);
	//lock_screen 풀때 비밀번호 찾아오는것
	String pwCheck(String id);

	
}
