package luxury.dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import luxury.dto.ProductDto;
import luxury.dto.ProductMapper;
import luxury.entity.MapperProduct;
import luxury.entity.Product;

@Repository
public class ProductDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;

	public List<Product> GetDataproduct() {
		List<Product> list_pro = new ArrayList<Product>();
		String sql = "SELECT * FROM product ,brand, typemov where product.id_brand = brand.id_brand and product.id_type = typemov.id_type and product.sale = 0 ORDER BY id_product DESC LIMIT 12";
		list_pro = _jdbcTemplate.query(sql, new MapperProduct());
		return list_pro;
	}

	public List<Product> GetDataproductAuto() {
		List<Product> list_proauto = new ArrayList<Product>();
		String sql = "SELECT * from product, brand, typemov where product.id_brand = brand.id_brand ORDER BY RAND() limit 3";
		list_proauto = _jdbcTemplate.query(sql, new MapperProduct());
		return list_proauto;
	}
	public List<Product> GetDataproductSale() {
		List<Product> list_proauto1 = new ArrayList<Product>();
		String sql = "SELECT * FROM product ,brand, typemov where product.id_brand = brand.id_brand and product.id_type = typemov.id_type and product.sale != 0 ORDER BY RAND() DESC LIMIT 12";
		list_proauto1 = _jdbcTemplate.query(sql, new MapperProduct());
		return list_proauto1;
	}
	public List<Product> GetDataproductId(String id) {
		List<Product> list_proid = new ArrayList<Product>();
		String sql = "SELECT *FROM product,brand,typemov where product.id_brand = brand.id_brand and product.id_type = typemov.id_type and product.id_product="+id;
		list_proid = _jdbcTemplate.query(sql, new MapperProduct());
		return list_proid;
	}
	private String sqlString(long idd) {
	StringBuffer sql = new StringBuffer();
	sql.append("select ");
	sql.append("id_product,name_product,image,pro_price ");
	sql.append("from ");		
	sql.append("product ");
	sql.append("where ");
	sql.append("product.id_product ");
	sql.append("= "+idd);
	return sql.toString();
	}
	public List<Product> GetId_brand() {
		List<Product> id_brand = new ArrayList<Product>();
		String sql = "SELECT * from product, brand, typemov where product.id_brand = brand.id_brand ORDER BY RAND() limit 4";
		id_brand = _jdbcTemplate.query(sql, new MapperProduct());
		return id_brand;		
	}
		public ProductDto findProduct( long idd) {				
		String sql = sqlString(idd);//"SELECT id_product,name_product,image,pro_price from product, brand, typemov where product.id_brand ="+idd;
		ProductDto product = _jdbcTemplate.queryForObject(sql, new ProductMapper());
		return product;		
	}
	public List<Product> GetDataproductBrand(int id) {
		List<Product> list_probrand = new ArrayList<Product>();
		String sql = "SELECT *FROM product,brand,typemov where product.id_brand = brand.id_brand and product.id_type = typemov.id_type and product.id_brand="+id;
		list_probrand = _jdbcTemplate.query(sql, new MapperProduct());
		return list_probrand;
	}

}
