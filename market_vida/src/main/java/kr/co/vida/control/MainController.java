package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.service.OrdersImple;

@Controller
public class MainController {
	
	@Autowired
	OrdersImple service;
	
	@RequestMapping(value = {"/","/main"})
	public String orderList(Model model) {
		model.addAttribute("orderlist", service.selectAllList(1));
		return "/main/main";
	}
	
	@RequestMapping("/benefit")
	public String benefit() {
		return "/main/friendsBenefit";
	}
	
}
