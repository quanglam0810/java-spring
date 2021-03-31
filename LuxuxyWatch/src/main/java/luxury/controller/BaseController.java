package luxury.controller;
import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import luxury.service.user.BrandServiceIpm;
import luxury.service.user.ProductServiceIpm;
@Controller
public class BaseController {
	@Autowired
	BrandServiceIpm _IBrandService;
	//BrandDao brand;
	@Autowired
	ProductServiceIpm _ProductService;
	public ModelAndView _share = new ModelAndView();
	@PostConstruct
	public ModelAndView Init() {
		_share.addObject("Brand",_IBrandService.GetDatabrand());
		return _share;
		
	}
}
