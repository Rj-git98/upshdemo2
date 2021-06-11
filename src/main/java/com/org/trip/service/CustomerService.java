package com.org.trip.service;








import com.org.trip.model.Customer;
import com.org.trip.model.Expenditure;

public interface CustomerService {

	public boolean getUserName(String userName);

	public int saveCustomer( Customer c);

	public boolean verifyUser(String userName, String password);

	public Customer getCustomerbyUsername(String userName);

	public int getCidByUname(String userName);

	public Expenditure getExpenditure(int custid);

	public boolean verifyCustidExp(int custid);

	public int saveCustIdexp( Customer customer);

	public Customer getCustomerbycustId(int custId);

	public Boolean updatexp(Expenditure expenditure, int custId);

	

	

}
