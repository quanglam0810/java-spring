package luxury.service.user;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import luxury.dao.ProductDao;
import luxury.entity.Product;

@Service
public class ProductServiceIpm implements IProductService {

	@Autowired
	private ProductDao productdao = new ProductDao();
	public List<Product> GetDataproduct() {		
		return  productdao.GetDataproduct();
	}
	public List<Product> GetDataproductAuto() {		
		return  productdao.GetDataproductAuto();
	}
	public List<Product> GetDataproductId(String id) {		
		return  productdao.GetDataproductId(id);
	}
	public List<Product> GetDataproductBrand(int id) {		
		return  productdao.GetDataproductBrand(id);
	}
	public List<Product> GetDataproductSale() {		
		return  productdao.GetDataproductSale();
	}
	public List<Product> GetId_brand(){		
		return  productdao.GetId_brand();
	}
//	public List<Product> Getprobrand(){		
//		return  productdao.Getprobrand();
//	}
	
}
