package luxury.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import luxury.entity.Mapperbrand;
import luxury.entity.Brand;

@Repository
public class BrandDao {
	/// su dung lop string buffer or buider thay cho cau lenh truy van
//	private String sqlString() {
//		StringBuffer sql = new StringBuffer();
//		sql.append("select ");
//		sql.append("* ");
//		sql.append("from ");		
//		sql.append("brand");
//		return sql.toString();
//	}
	@Autowired
	public  JdbcTemplate _jdbcTemplate;
	public  List<Brand> GetDatabrand(){
	List<Brand> list_br = new ArrayList<Brand>();
	//String sql =  sqlString();//"SELECT * FROM brand";
	String sql = "SELECT * FROM brand";
	list_br =_jdbcTemplate.query(sql, new Mapperbrand());
	return list_br;
	}
	
}
