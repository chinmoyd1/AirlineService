package com.airline.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@NamedQuery(name = "uRegistration.LogIn", query="SELECT u FROM uRegistration u WHERE u.UserName = :uname AND u.Password = :pd")
@Entity

public class uRegistration implements Serializable {

	
	
	private static final long serialVersionUID = 1L;

	public uRegistration() {
		super();
	}
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id; 
	
	private String firstName;
	
	private String lastName;
	
	@Temporal(TemporalType.DATE)
	private Date dob;

	@Enumerated(EnumType.STRING)
	private Gender gender;
	
	private String Designation;
	
	private String UserName;
	
	private String Password;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String fName) {
		this.firstName = fName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lName) {
		this.lastName = lName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public String getDesignation() {
		return Designation;
	}

	public void setDesignation(String designation) {
		Designation = designation;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}
	

	@Override
	public String toString() {
		return "uRegistration [id=" + id + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", dob=" + dob + ", gender="
				+ gender + ", Designation=" + Designation + ", UserName="
				+ UserName + ", Password=" + Password + "]";
	}
	
	
	
	
}
