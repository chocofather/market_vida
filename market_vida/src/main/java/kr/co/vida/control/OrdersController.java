package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.vida.dto.CouponDTO;
import kr.co.vida.dto.ImgDTO;
import kr.co.vida.dto.OrdersDTO;
import kr.co.vida.service.ImgListImple;
import kr.co.vida.service.OrdersImple;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class OrdersController {

	@Autowired
	OrdersImple service;
	
	@RequestMapping("/mypage/reviewDetail")
	public String myCoupon(@RequestParam("crew_no") int crew_no, Model model) {
		model.addAttribute("list", service.selectAllList(crew_no));
		return "/mypage/myReviewBefore";
	}

}
