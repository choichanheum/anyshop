package com.syu.anyshop.login;

public class LoginInfo {
	private String id;
	private String pw;
	private String name;
	private String dept;
	private String studentId;
	private int grade;
	private String phone;
	private String gender;
	
	public LoginInfo() {}
	
	public LoginInfo(String id, String pw, String name, String dept, String studentId, int grade, String phone,
			String gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.dept = dept;
		this.studentId = studentId;
		this.grade = grade;
		this.phone = phone;
		this.gender = gender;
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

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
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

	@Override
	public String toString() {
		return "LoginInfo [id=" + id + ", pw=" + pw + ", name=" + name + ", dept=" + dept + ", studentId=" + studentId
				+ ", grade=" + grade + ", phone=" + phone + ", gender=" + gender + "]";
	}
	
	
}
