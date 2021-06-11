package com.org.trip.model;

public class Expenditure {

	private int custId;
	private int income;
	private int food;
	private int clothes;
	private int education;
	private int power;
	private int transport;
	private int medical;
	private int savings;
	
	@Override
	public String toString() {
		return "Expenditure [custId=" + custId + ", income=" + income + ", food=" + food + ", clothes=" + clothes
				+ ", education=" + education + ", power=" + power + ", transport=" + transport + ", medical=" + medical
				+ ", savings=" + savings +  "]";
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public int getFood() {
		return food;
	}
	public void setFood(int food) {
		this.food = food;
	}
	public int getClothes() {
		return clothes;
	}
	public void setClothes(int clothes) {
		this.clothes = clothes;
	}
	public int getEducation() {
		return education;
	}
	public void setEducation(int education) {
		this.education = education;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public int getTransport() {
		return transport;
	}
	public void setTransport(int transport) {
		this.transport = transport;
	}
	public int getMedical() {
		return medical;
	}
	public void setMedical(int medical) {
		this.medical = medical;
	}
	public int getSavings() {
		return savings;
	}
	public void setSavings(int savings) {
		this.savings = savings;
	}
	public Expenditure(int income,int food, int clothes, int education, int power, int transport, int medical, int savings) {
		super();
		this.income=income;
		this.food = food;
		this.clothes = clothes;
		this.education = education;
		this.power = power;
		this.transport = transport;
		this.medical = medical;
		this.savings = savings;
		
	}
	
	public Expenditure() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	
	
}
