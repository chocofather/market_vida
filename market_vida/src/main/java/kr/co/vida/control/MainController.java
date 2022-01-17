package kr.co.vida.control;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.service.FriendsBenefitImple;
import kr.co.vida.service.MainCatImple;
import kr.co.vida.service.OrdersImple;

@Controller
@RequestMapping("/main")
public class MainController {
	
	
	@Autowired
	MainCatImple mainCodesvc;
	
	@Autowired
	FriendsBenefitImple fbService;
	
	@RequestMapping(value = {"/","/main"})
	public String orderList(Model model) {
		model.addAttribute("mainCode", mainCodesvc.selectAllList());
		return "/main/main";
	}
	
	@RequestMapping("/benefit")
	public String benefit(Model model) {
		model.addAttribute("list",fbService.selectAllList());
		return "/main/friendsBenefit";
	}
	
	@GetMapping("/detail")
	public String benefitDetail(@RequestParam("grade")String grade,Model model) {
		model.addAttribute("dto", fbService.selectOne(grade));
		return "/main/tab";
	}
	
	@RequestMapping("../goods/goodsList")
	public ModelAndView goMainCat(@RequestParam("main_cat_code")int main_cat_code) {
		
		return null;
	}
	
}
