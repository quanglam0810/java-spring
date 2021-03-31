package luxury.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import luxury.entity.Brand;
@Service
public interface IBrandService {
	@Autowired
	public List<Brand> GetDatabrand();
}
     	