package luxury.entity;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class MapperOder implements RowMapper<Oder>{

	public Oder mapRow(ResultSet rs, int rowNum) throws SQLException {
		Oder oder = new Oder();
		oder.setId_oder(rs.getInt("id_oder"));
		oder.setId_user(rs.getInt("id_user"));
		oder.setOder_date(rs.getString("oder_date"));
		oder.setDelivery_date(rs.getString("delivery_date"));
		oder.setReceiver(rs.getString("receiver"));
		oder.setPhone(rs.getInt("phone"));
		oder.setAdd_oder(rs.getString("add_oder"));
		oder.setStatus_oder(rs.getString("status_oder"));
		return oder;
	}

}
