package luxury.entity;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class MapperAdsystem implements RowMapper<Adsystem> {

	public Adsystem mapRow(ResultSet rs, int rowNum) throws SQLException {
		Adsystem adsys = new Adsystem();
		adsys.setId_admin(rs.getInt("id_admin"));
		adsys.setAdmin_name(rs.getString("admin_name"));
		adsys.setAccount_admin(rs.getString("account_admin"));
		adsys.setPassword_admin("password_admin");
		adsys.setPhone(rs.getInt("phone"));
		adsys.setAddress(rs.getString("address"));
		return adsys;
	}

}
