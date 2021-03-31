package luxury.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import luxury.entity.Customer;

@Service
public interface ICustomerService {
	@Autowired
	public int addAccount(Customer customer);

	public Customer checkLogin(Customer customer);
}
