package luxury.controller.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	@RequestMapping("/admin")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/layouts/admin");
		return mv;
	}
}
