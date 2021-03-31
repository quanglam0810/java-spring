package luxury.dao;

import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import luxury.entity.Oder;
@Repository
public class OderDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;

	public int GetIDLastBill() {
		String sql = "select MAX(id_oder) from oder;";
		int id = _jdbcTemplate.queryForObject(sql, new Object[] {},int.class);
		return id;
	}

	public int AddOder(Oder oder) {			
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO oder ");
		sql.append("(oder_date, id_user, receiver, email, phone, add_oder, status_oder) ");
		sql.append("VALUES");
		sql.append("(");
		sql.append("'" + java.time.LocalDate.now() + "',");
		sql.append("'" + oder.getId_user() + "',");
		sql.append("'" + oder.getReceiver() + "',");
		sql.append("'" + oder.getEmail() + "',");
		sql.append("'" + oder.getPhone() + "',");
		sql.append("'" + oder.getAdd_oder() + "', ");
		sql.append("'dang xu li' ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
//	public int AddOderDetail(OderDetail oderDT) {
//		StringBuffer sql = new StringBuffer();
//		sql.append("INSERT INTO oderdetail ");
//		sql.append("(id_oder, id_product, qty_oder, pri_oder) ");
//		sql.append("VALUES");
//		sql.append("(");
//		sql.append("'" + oderDT.getId_oder()+ "',");
//		sql.append("'" + oderDT.getId_product() + "',");
//		sql.append("'" + oderDT.getQty_oder() + "',");
//		sql.append("'" + oderDT.getPri_oder() + "' ");
//		sql.append(");");
//		int insert = _jdbcTemplate.update(sql.toString());
//		return insert;
//	}

}
