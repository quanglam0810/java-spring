package luxury.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import luxury.dao.BrandDao;
import luxury.entity.Brand;
@Service
public class BrandServiceIpm implements IBrandService{
	@Autowired
	private BrandDao branddao = new BrandDao();
	public List<Brand> GetDatabrand()
	{
		return branddao.GetDatabrand();
		
	}

}
