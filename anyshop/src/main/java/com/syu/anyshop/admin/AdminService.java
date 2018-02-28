package com.syu.anyshop.admin;

import java.util.List;

import com.syu.anyshop.login.LoginInfo;

public interface AdminService {

	List<LoginInfo> showAllMember();

	LoginInfo searchMember(String id);

	void updateMember(LoginInfo loginInfo);

	void regiMember(LoginInfo loginInfo);

}
