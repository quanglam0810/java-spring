package luxury.entity;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class MapperOderDetail implements RowMapper<OderDetail> {

	public OderDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		OderDetail odt =new OderDetail();
		odt.setId_oderdetail(rs.getInt("id_oderdetail"));
		odt.setId_oder(rs.getInt("id_oder"));
		odt.setId_product(rs.getInt("id_product"));
		odt.setQty_oder(rs.getInt("qty_oder"));
		odt.setPri_oder(rs.getInt("pri_oder"));
		return odt;
	}

}
