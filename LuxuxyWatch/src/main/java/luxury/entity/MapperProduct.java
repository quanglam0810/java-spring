package luxury.entity;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
public class MapperProduct implements RowMapper<Product>{
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Product product = new Product();
		product.setId_product(rs.getInt("id_product"));
		product.setCodeProduct(rs.getString("codeProduct"));
		product.setName_product(rs.getString("name_product"));
		product.setId_type(rs.getInt("id_type"));
		product.setType_name(rs.getString("type_name"));
		product.setId_brand(rs.getInt("id_brand"));
		product.setBrand_name(rs.getString("brand_name"));
		product.setBrand_address(rs.getString("brand_address"));
		product.setSizeCase(rs.getFloat("sizeCase"));
		product.setColorCase(rs.getString("colorCase"));
		product.setImage(rs.getString("image"));
		product.setImage_1(rs.getString("image_1"));
		product.setImage_2(rs.getString("image_2"));
		product.setImage_3(rs.getString("image_3"));
		product.setPro_price(rs.getInt("pro_price"));
		product.setStrap_type(rs.getString("strap_type"));
		product.setPro_qty(rs.getInt("pro_qty"));
		product.setGlass_type(rs.getString("glass_type"));
		product.setInfo_product(rs.getString("info_product"));	
		product.setSale(rs.getInt("sale"));
		product.setRating(rs.getFloat("rating"));
		return product;
	}
}
