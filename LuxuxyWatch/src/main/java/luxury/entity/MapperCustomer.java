package luxury.entity;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class MapperCustomer implements RowMapper<Customer> {

	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Customer cus = new Customer();
		cus.setId_user(rs.getInt("id_user"));
		cus.setAccount_user(rs.getString("account_user"));
		cus.setPassword_user(rs.getString("password_user"));
		cus.setUser_name(rs.getString("user_name"));
		cus.setEmail(rs.getString("email"));
		cus.setPhone(rs.getInt("phone"));
		cus.setAddress(rs.getString("address"));
		return cus;
	}

}
