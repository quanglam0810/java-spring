package luxury.dao;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import luxury.dto.ProductDto;
import luxury.dto.ProductMapper;
import luxury.entity.Customer;
import luxury.entity.MapperCustomer;

@Repository
public class CustomerDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public int addAccount(Customer customer)
	{
		StringBuffer str = new StringBuffer();
		str.append("INSERT ");
		str.append("INTO customer");
		str.append("(account_user, password_user, user_name, email, address) ");
		str.append("VALUES");
		str.append("(");
		str.append("'"+customer.getAccount_user()+"',");
		str.append("'"+customer.getPassword_user()+"',");
		str.append("'"+customer.getUser_name()+"',");
		str.append("'"+customer.getEmail()+"', ");
		str.append("'"+customer.getAddress()+"' ");
		str.append(");");
		int insert = _jdbcTemplate.update(str.toString());
		return insert;
	}
	public Customer checLogin(Customer customers)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("customer WHERE ");
		sql.append("account_user = ");
		sql.append("'"+customers.getAccount_user()+"'");
		//sql.append("AND ");
		//sql.append("password_user = ");
		//sql.append("'"+customers.getPassword_user()+"'");
		//String sql = " customer WHERE account_user = "+customer.getAccount_user()+" AND password_user =" +customer.getPassword_user();
		Customer cus = _jdbcTemplate.queryForObject(sql.toString(), new MapperCustomer());
		return cus;	
	}
}
