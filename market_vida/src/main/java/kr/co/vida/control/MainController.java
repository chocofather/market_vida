package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.service.FriendsBenefitImple;
import kr.co.vida.service.MainCatImple;
import kr.co.vida.service.OrdersImple;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/main")
@Slf4j
public class MainController {
	
	
	@Autowired
	FriendsBenefitImple fbService;
	
	@RequestMapping(value = {"/","/main"})
	public String orderList(Model model) {
		return "/main/main";
	}
<<<<<<< HEAD

=======
	
	@RequestMapping("/cat/list")
	public ModelAndView categoryList() {
		return new ModelAndView("/main/banner_form", "mainCode", mainCodesvc.selectAllList());
	}
	
>>>>>>> branch 'main' of https://github.com/chocofather/market_vida.git
	@GetMapping("/benefit")
	public String benefit(Model model) {
		model.addAttribute("mainCode", mainCodesvc.selectAllList());
		model.addAttribute("grade", fbService.getListGrade());
		model.addAttribute("benefit", fbService.selectAllList());
		return "/main/friendsBenefit";
	}

}