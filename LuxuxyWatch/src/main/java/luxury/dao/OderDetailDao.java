package luxury.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import luxury.entity.OderDetail;
@Repository
public class OderDetailDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	public int AddOderDetail(OderDetail oderDT) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO oderdetail ");
		sql.append("(id_oder, id_product, qty_oder, pri_oder) ");
		sql.append("VALUES");
		sql.append("(");
		sql.append("'" + oderDT.getId_oder()+ "',");
		sql.append("'" + oderDT.getId_product() + "',");
		sql.append("'" + oderDT.getQty_oder() + "',");
		sql.append("'" + oderDT.getPri_oder() + "' ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}

}
