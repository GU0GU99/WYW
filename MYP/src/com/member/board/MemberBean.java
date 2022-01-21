package com.member.board;

public class MemberBean {

	private String id;
	private String pass;
	private String name;
	private String gender;
	private String email;
	private int age;
	private int yue;
	private int ri;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getYue() {
		return yue;
	}
	public void setYue(int yue) {
		this.yue = yue;
	}
	public int getRi() {
		return ri;
	}
	public void setRi(int ri) {
		this.ri = ri;
	}
	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", pass=" + pass + ", name=" + name + ", gender=" + gender + ", email=" + email
				+ ", age=" + age + ", yue=" + yue + ", ri=" + ri + "]";
	}

	
}
