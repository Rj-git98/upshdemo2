package com.org.trip.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.trip.model.Customer;
import com.org.trip.model.Expenditure;
import com.org.trip.service.CustomerService;


@Controller
public class CustomerController {
	@Autowired
	CustomerService service;
	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/register")
	public String register(Model model) {
		
		model.addAttribute("customer", new Customer());
		return "register";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value="/saveCustomer",method = RequestMethod.POST)
	public String submitreg(@Valid @ModelAttribute("customer") Customer customer, BindingResult br, Model model,
			@RequestParam String userName) {
		
		if (br.hasErrors()) {
			return "register";
		
		} 
		else if (service.getUserName(userName)) {
			String message = "Username Already Taken!!!";
			model.addAttribute("message", message);
             return "register";
		} 
		else {
			service.saveCustomer(customer);
			service.saveCustIdexp(customer);
			return "login";
		}
	}
	@RequestMapping(value="/welcome",method = RequestMethod.POST)
	public String welcome(@RequestParam String userName, @RequestParam String password, Model model) {
              //for verifying if username and password are available in db
		
		if (service.verifyUser(userName,password)) {
		         
				int custid=service.getCidByUname(userName);
				model.addAttribute("custId", custid);
				if(service.verifyCustidExp(custid)) {
				return "tripplanner";
				}
			} 
			else  
			{
				String message = "please check username and password!!!";
				model.addAttribute("message", message);
				return "login";
				}
		return "tripplanner";
			}
	@RequestMapping("/showDetails")
	public String  showdetail(Model model,@RequestParam int custId)
	
	{     
		Customer customer=service.getCustomerbycustId(custId);
		model.addAttribute("customer", customer);
		 Expenditure expenditure = service.getExpenditure(custId);
		 model.addAttribute("expenditure",expenditure);
		return "customerdetails";
		
	}
	@RequestMapping("/showSavings")
	public String showSavings(Model  model,@RequestParam int custId) 
	{
		Expenditure expenditure = service.getExpenditure(custId);
		model.addAttribute("expenditure", expenditure);
		return "newupdate";
	}
	
	@RequestMapping("/updateExpenses")

	public String update( @ModelAttribute("expenditure")  Expenditure expenditure,@RequestParam int custId)
	{
		
		
			service.updatexp(expenditure,custId);
			return"redirect:/";
	}
	
	

}
