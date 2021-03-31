package luxury.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import luxury.service.user.BrandServiceIpm;
import luxury.service.user.CartServiceIpm;
import luxury.service.user.CustommerServiceIpm;
import luxury.service.user.OderServiceIpm;
import luxury.service.user.ProductServiceIpm;
import luxury.dao.CustomerDao;
import luxury.dto.CartDto;
import luxury.entity.Customer;
import luxury.entity.Oder;
import luxury.entity.OderDetail;

@Controller
public class HomeController extends BaseController {
	@Autowired
	BrandServiceIpm IBrandService;
	// BrandDao brand;
	@Autowired
	ProductServiceIpm ProductService;
	// ProductDao product;
	@Autowired
	public CartServiceIpm cartservice = new CartServiceIpm();
	@Autowired
	public OderServiceIpm oderservice = new OderServiceIpm();
	@Autowired
	public CustommerServiceIpm Icus = new CustommerServiceIpm();
	@Autowired
	public CustomerDao Icuss = new CustomerDao();

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("Brand", IBrandService.GetDatabrand());
		mv.addObject("Product", ProductService.GetDataproduct());
		mv.addObject("ProductAuto", ProductService.GetDataproductAuto());
		mv.addObject("ProductSale", ProductService.GetDataproductSale());
		mv.setViewName("/user/index");
		return mv;

	}

	// controller lay san pham theo id_product
	@RequestMapping("/product&id={id}")
	public ModelAndView product(@PathVariable String id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("Brand", IBrandService.GetDatabrand());
		mv.addObject("ProductBYId", ProductService.GetDataproductId(id));
		mv.addObject("getbrand", ProductService.GetId_brand());
		// mv.addObject("getprobrand",ProductService.Getprobrand());
		// mv.addObject("b", id); lay thu
		mv.setViewName("/user/product_detail");
		return mv;

	}
	// dieu huong den trang gio hang
	@RequestMapping("/cart")
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/cart");
		return mv;

	}
	// them san pham vao gio hang
	@RequestMapping(value = "/addcart&idsp={idsp}")
	public String addcart(HttpServletRequest request, HttpSession session, @PathVariable long idsp) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartservice.AddCart(idsp, cart);
		session.setAttribute("cart", cart);
		session.setAttribute("price", cartservice.totalPri(cart));
		session.setAttribute("qty", cartservice.totalQty(cart));		
		// return "redirect:/cart";
		// trả về view của trang truóc
		return "redirect:" + request.getHeader("referer");

	}
	// xoa san pham theo id trong gio hang
	@RequestMapping(value = "/DelCart&idsp={idsp}")
	public String deleteCart(HttpServletRequest request, HttpSession session, @PathVariable long idsp) {
		@SuppressWarnings("unchecked")
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartservice.DeleteCart(idsp, cart);
		session.setAttribute("cart", cart);
		session.setAttribute("price", cartservice.totalPri(cart));
		session.setAttribute("qty", cartservice.totalQty(cart));		
		// ModelAndView mv = new ModelAndView();
		// mv.setViewName("/user/cart");
		// return "redirect:/cart";
		return "redirect:" + request.getHeader("referer");
	}
	// update san pham theo id_product
	@RequestMapping(value = "/edit&idsp={idsp}&slg={slg}")
	public String editCart(HttpSession session, @PathVariable long idsp, @PathVariable int slg) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartservice.EditCart(idsp, slg, cart);
		session.setAttribute("cart", cart);
		session.setAttribute("price", cartservice.totalPri(cart));
		session.setAttribute("qty", cartservice.totalQty(cart));	
		// ModelAndView mv = new ModelAndView();
		// mv.setViewName("/user/cart");
		return "redirect:/cart";

	}
	// view checkout
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkout(HttpSession session, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		Oder oder = new Oder();
		Customer user = (Customer) session.getAttribute("user");
		if (user != null) {
			oder.setId_user(user.getId_user());
			oder.setAdd_oder(user.getAddress());
			oder.setReceiver(user.getUser_name());
			oder.setId_user(user.getId_user());
		}
		mv.addObject("Brand", IBrandService.GetDatabrand());
		mv.addObject("oder", oder);
		mv.setViewName("/user/checkout");
		return mv;

	}
	// xu li thanh toan
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String OKcheckout(HttpSession session, HttpServletRequest request, @ModelAttribute("oder") Oder oders,
			@ModelAttribute("oderDT") OderDetail oderDT) {
		ModelAndView mv = new ModelAndView();
		if (oderservice.AddOder(oders) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>) session.getAttribute("cart");

			oderservice.AddOderDetail(carts);

		}
		session.removeAttribute("cart");
		mv.addObject("Brand", IBrandService.GetDatabrand());
		return "redirect:/cart";

	}
	// lay du lieu brand theo id_brand
	@RequestMapping("/brand&id={id}")
	public ModelAndView brand(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("Brand", IBrandService.GetDatabrand());
		mv.addObject("ProductBrand", ProductService.GetDataproductBrand(id));
		mv.setViewName("/user/product_brand");
		return mv;

	}
	// view login
	@RequestMapping(value = "/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("Brand", IBrandService.GetDatabrand());
		mv.setViewName("/user/login");
		return mv;

	}
	// xu li login
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView Atlogin(HttpSession session, @ModelAttribute("customer") Customer customer) {
		ModelAndView mv = new ModelAndView();
		Customer check = Icus.checkLogin(customer);
		if (check != null) {						
			session.setAttribute("user", check);
			mv.setViewName("redirect:/");			
		} else {

			mv.setViewName("redirect:/login");
			mv.addObject("statuls", "Dang nhap that bai");

		}
		return mv;

	}
	// view resign
	@RequestMapping(value = "/resign", method = RequestMethod.GET)
	public ModelAndView dangki() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("Brand", IBrandService.GetDatabrand());
		mv.setViewName("/user/resign");
		mv.addObject("customer", new Customer());
		return mv;

	}
	// xu li resign
	@RequestMapping(value = "/resign", method = RequestMethod.POST)
	public ModelAndView crDangki(@ModelAttribute("customer") Customer customer) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("Brand", IBrandService.GetDatabrand());
		int count = Icus.addAccount(customer);
		if (count > 0) {
			mv.addObject("status", "Dang ki thanh cong, Đi tới đăng nhập");
		} else {
			mv.addObject("status", "Dang ki Thất bại xin thử lại");
		}
		mv.setViewName("/user/resign");
		return mv;

	}
}
