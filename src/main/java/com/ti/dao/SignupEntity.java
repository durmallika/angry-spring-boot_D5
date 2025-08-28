package com.ti.dao;

import javax.persistence.*;

@Entity
@Table(name="jsignups_tbl")
public class SignupEntity {
    private int sid;
	private String username;
	private String password;
	private String email;
	private String mobile;
	private String gender;
	private String address;
	private byte[] photo;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}
	

	@Column(columnDefinition = "longblob") 
	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	@Column(length = 50)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(length = 30)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "SignupDTO [username=" + username + ", password=" + password + ", email=" + email + ", mobile=" + mobile
				+ ", gender=" + gender + ", address=" + address + "]";
	}

}
