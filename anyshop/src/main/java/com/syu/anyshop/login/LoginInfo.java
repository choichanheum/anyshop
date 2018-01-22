package com.syu.anyshop.login;

public class LoginInfo {
	private String id;
	private String pw;
	private String name;
	private String phone;
	private String gender;
	private String email;
	private String address;
	private int point;


	public LoginInfo() {
		super();
	}


	public LoginInfo(String id, String pw, String name, String phone, String gender, String email, String address,
			int point) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.address = address;
		this.point = point;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getPoint() {
		return point;
	}


	public void setPoint(int point) {
		this.point = point;
	}


	@Override
	public String toString() {
		return "LoginInfo [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", gender=" + gender
				+ ", email=" + email + ", address=" + address + ", point=" + point + "]";
	}

	
	
	
	
	


	
}
