package luxury.dto;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import luxury.dto.ProductDto;
import luxury.entity.Product;
public class ProductMapper implements RowMapper<ProductDto>{

	public ProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ProductDto productdto = new ProductDto();
		productdto.setId_product(rs.getInt("id_product"));
		productdto.setName_product(rs.getString("name_product"));
		productdto.setImage(rs.getString("image"));
		productdto.setPro_price(rs.getInt("pro_price"));
		return productdto;
	}

}
