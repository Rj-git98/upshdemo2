package com.org.trip.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.org.trip.model.Customer;
import com.org.trip.model.Expenditure;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public boolean getUserName(String userName) {
		String sql="select count(*) from customer where username=? ";
		int count=template.queryForObject(
	            sql, new Object[] {userName}, Integer.class);
		if(count<=0)
			return false;
			else
				return true;
	}

	@Override
	public int saveCustomer(Customer customer) {
		String sql = "insert into customer(userName,password,custName,city,mobileNo,occupation,age) values('" + customer.getUserName() + "','"
				+ customer.getPassword() + "','" + customer.getCustName() + "','" + customer.getCity()+ "','" + customer.getMobileNo() + "','"+customer.getOccupation()+ "','"+customer.getAge()+"')";
		return template.update(sql);
	}

	@Override
	public boolean verifyUser(String userName, String password) {
		String sql="select count(custid) from customer where username=? and password=?";
		return template.queryForObject(
	            sql, new Object[] {userName,password}, boolean.class);
		
		
	}

	@Override
	public Customer getCustomerbyUsername(String userName) {
		
			String sql="select custid,custname,city,mobileno,occupation,age from customer where username=?";
			RowMapper<Customer> mapper = new RowMapper<Customer>() {
		        public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
					Customer customer = new Customer();
					
						
						customer.setCustId(rs.getInt(1));
						customer.setCustName(rs.getString(2));
						customer.setCity(rs.getString(3));
						customer.setMobileNo(rs.getString(4));
						customer.setOccupation(rs.getString(5));
						customer.setAge(rs.getInt(6));
						return customer;
					
					
				}
			};
			return (Customer) template.queryForObject(sql, new Object[] {userName}, mapper);

			
	}

	@Override
	public int getCidByUname(String userName) {
		String sql="select custid from customer where username=? ";
		int count=template.queryForObject(
	            sql, new Object[] {userName}, Integer.class);
		
			return count;
			
	}

	@Override
	public Expenditure getExpenditure(int custid) {
		String sql="select * from expenditure where custid=?";
		RowMapper<Expenditure> mapper = new RowMapper<Expenditure>() {
	        public Expenditure mapRow(ResultSet rs, int rowNum) throws SQLException {
	        	Expenditure expenditure = new Expenditure();
	        	
				
	        	expenditure.setCustId(rs.getInt(1));
	
	        	expenditure.setIncome(rs.getInt(2));
	        	expenditure.setFood(rs.getInt(3));
	        	expenditure.setClothes(rs.getInt(4));
	        	expenditure.setEducation(rs.getInt(5));
	        	expenditure.setPower(rs.getInt(6));
	        	expenditure.setTransport(rs.getInt(7));
	        	expenditure.setMedical(rs.getInt(8));
	        	expenditure.setSavings(rs.getInt(9));
	        	


					return expenditure;
				
				
			}
		};
		return (Expenditure) template.queryForObject(sql, new Object[] {custid}, mapper);

	}

	@Override
	public boolean verifyCustidExp(int custid) {
		String sql="select count(custid) from expenditure where custid=?";
		return template.queryForObject(
	            sql, new Object[] {custid}, boolean.class);
	}

	@Override
	public int saveCustIdexp(Customer customer) {
		String sql="insert into expenditure(custId) select custId from customer where  not exists(select custId from expenditure where customer.custId=expenditure.custId)";
		return template.update(sql);

	}

	@Override
	public Customer getCustomerbycustId(int custId) {
		String sql="select custid,custname,city,mobileno,occupation,age from customer where custId=?";
		RowMapper<Customer> mapper = new RowMapper<Customer>() {
	        public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
				Customer customer = new Customer();
				
					
					customer.setCustId(rs.getInt(1));
					customer.setCustName(rs.getString(2));
					customer.setCity(rs.getString(3));
					customer.setMobileNo(rs.getString(4));
					customer.setOccupation(rs.getString(5));
					customer.setAge(rs.getInt(6));
					return customer;
				
				
			}
		};
		return (Customer) template.queryForObject(sql, new Object[] {custId}, mapper);

	}

	@Override
	public Boolean updatexp(Expenditure expenditure,int custId) {
		String sql="update expenditure set income=?,food=?,clothes=?,education=?,power=?,transport=?,medical=?,savings=? where custId=?";
		 
		return template.execute(sql,new PreparedStatementCallback<Boolean>(){  
		    @Override  
		    public Boolean doInPreparedStatement(PreparedStatement ps)  
		            throws SQLException, DataAccessException {  
		              
		        ps.setInt(1,expenditure.getIncome());  
		        ps.setInt(2,expenditure.getFood());  
		        ps.setInt(3,expenditure.getClothes());  
		        ps.setInt(4,expenditure.getEducation());  
		        ps.setInt(5,expenditure.getPower());  
		        ps.setInt(6,expenditure.getTransport());  
		        ps.setInt(7,expenditure.getMedical());  
		        ps.setInt(8,expenditure.getSavings());  
		        ps.setInt(9,custId);  

		        return ps.execute();  
		               
		    }  
		    });  
	}

	

}
