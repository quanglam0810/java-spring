package luxury.entity;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class MapperTypeMov implements RowMapper<TypeMov>{

	public TypeMov mapRow(ResultSet rs, int rowNum) throws SQLException {
		//Product product = new Product();
		TypeMov typemov = new TypeMov();
		typemov.setId_type(rs.getInt("id_type"));
		typemov.setType_name(rs.getString("type_name"));
		return typemov ;
	}

}
