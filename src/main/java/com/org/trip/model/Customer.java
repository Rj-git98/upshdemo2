package com.org.trip.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

public class Customer {
private int custId;
@NotEmpty
@Pattern(regexp="^[a-z0-9_-]{3,15}$",message ="Invalid Input")
private String userName;
@NotEmpty
@Pattern(regexp="(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}",message ="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters")
private String password;
@NotEmpty
@Pattern(regexp="^[A-Za-z]*$",message ="Invalid Input")
private String custName;
@Pattern(regexp="^[A-Za-z]*$",message ="Invalid Input")
private String city;
@Pattern(regexp="[+91]{3}[0-9]{10}",message ="Invalid Input")
private String mobileNo;
@NotEmpty(message = "occupation is mandatory")
private String occupation;
//@NotEmpty(message = "age is mandatory")
private int age;
public int getCustId() {
	return custId;
}
public void setCustId(int custId) {
	this.custId = custId;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getCustName() {
	return custName;
}
public void setCustName(String custName) {
	this.custName = custName;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getMobileNo() {
	return mobileNo;
}
public void setMobileNo(String mobileNo) {
	this.mobileNo = mobileNo;
}
public String getOccupation() {
	return occupation;
}
public void setOccupation(String occupation) {
	this.occupation = occupation;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public Customer() {
	super();
	// TODO Auto-generated constructor stub
}
public Customer(String userName, String password,String custName,String city, String mobileNo, String occupation, int age) {
	super();
	this.userName = userName;
	this.password=password;
	this.custName = custName;
	this.city=city;
	this.mobileNo = mobileNo;
	this.occupation = occupation;
	this.age = age;
}


@Override
public String toString() {
	return "Customer [custId=" + custId + ", userName=" + userName + ", password=" + password + ", custName=" + custName
			+ ", city=" + city + ", mobileNo=" + mobileNo + ", occupation=" + occupation + ", age=" + age + "]";
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}
