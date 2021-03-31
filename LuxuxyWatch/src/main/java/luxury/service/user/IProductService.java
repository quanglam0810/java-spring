package luxury.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import luxury.entity.Product;
@Service
public interface IProductService {
	@Autowired
	public List<Product> GetDataproduct();
	@Autowired
	public List<Product> GetDataproductAuto();
	@Autowired
	public List<Product> GetDataproductId(String id);
	@Autowired
	public List<Product> GetDataproductBrand(int id);
	@Autowired
	public List<Product> GetId_brand();
	@Autowired
	public List<Product> GetDataproductSale();
//	@Autowired
//	public List<Product> Getprobrand();
}
