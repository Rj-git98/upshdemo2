package com.org.trip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.org.trip.model.Customer;
import com.org.trip.model.Expenditure;
import com.org.trip.repository.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao datamanager;
	@Override
	public boolean getUserName(String userName) {
		// TODO Auto-generated method stub
		return datamanager.getUserName(userName);
	}
	@Override
	public int saveCustomer(Customer c) {
		return datamanager.saveCustomer(c);
		
	}
	@Override
	public boolean verifyUser(String userName, String password) {
		// TODO Auto-generated method stub
		return datamanager.verifyUser( userName, password);
	}
	@Override
	public Customer getCustomerbyUsername(String userName) {
		// TODO Auto-generated method stub
		return datamanager.getCustomerbyUsername(userName);
	}
	@Override
	public int getCidByUname(String userName) {
		// TODO Auto-generated method stub
		return datamanager.getCidByUname(userName);
	}
	@Override
	public Expenditure getExpenditure(int custid) {
		// TODO Auto-generated method stub
		return datamanager.getExpenditure(custid);
	}
	@Override
	public boolean verifyCustidExp(int custid) {
		// TODO Auto-generated method stub
		return datamanager.verifyCustidExp(custid);
	}
	@Override
	public int saveCustIdexp(Customer customer) {
		// TODO Auto-generated method stub
		return datamanager.saveCustIdexp(customer);
	}
	
	@Override
	public Customer getCustomerbycustId(int custId) {
		// TODO Auto-generated method stub
		return datamanager.getCustomerbycustId(custId);
	}
	@Override
	public Boolean updatexp(Expenditure expenditure,int custId) {
		
		return datamanager.updatexp(expenditure,custId);
	}

}
