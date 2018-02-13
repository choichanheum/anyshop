package com.syu.anyshop.login;

public interface LoginDao {
	boolean loginCheck(LoginInfo loginInfo);

	void addMember(LoginInfo loginInfo);

	LoginInfo viewMember(LoginInfo loginInfo);

	void updateMember(LoginInfo loginInfo);

	void deleteMember(String id);

	String findId(String name, String phone);

	String findPw(String id, String name, String phone);

	int userCheck(String id);

	String pwCheck(String id);

	void updatePw(String id, String pw);
		
}
