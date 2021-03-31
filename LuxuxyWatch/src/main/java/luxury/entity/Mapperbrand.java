package luxury.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class Mapperbrand implements RowMapper<Brand>{

	public Brand mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Brand brand = new Brand();
		brand.setId_brand(rs.getInt("id_brand"));
		brand.setBrand_name(rs.getString("brand_name"));
		brand.setBrand_address(rs.getString("brand_address"));
		return brand;
	}
	
}