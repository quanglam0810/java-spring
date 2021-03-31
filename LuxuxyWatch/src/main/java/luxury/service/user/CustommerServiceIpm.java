package luxury.service.user;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import luxury.dao.CustomerDao;
import luxury.entity.Customer;

@Service
public class CustommerServiceIpm implements ICustomerService {
	@Autowired
	CustomerDao cus = new CustomerDao();

	public int addAccount(Customer customer) {
		customer.setPassword_user(BCrypt.hashpw(customer.getPassword_user(), BCrypt.gensalt(12)));
		return cus.addAccount(customer);
	}

	public Customer checkLogin(Customer customers) {		
		String pass = customers.getPassword_user();		
		customers = cus.checLogin(customers); 
		if(customers != null) {
			if(BCrypt.checkpw(pass, customers.getPassword_user())) {				
				return customers;				
			}		
			else {
				return null;
			}
		}
		return null;
		
}
}
