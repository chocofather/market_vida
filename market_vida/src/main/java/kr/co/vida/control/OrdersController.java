package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.vida.dto.OrdersDTO;
import kr.co.vida.dto.ReviewBoardDTO;
import kr.co.vida.service.OrdersImple;
import kr.co.vida.service.ReviewBoardImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class OrdersController {

	@Autowired
	OrdersImple service;

	@Autowired
	ReviewBoardImple reviewservice;

	@RequestMapping("/mypage/myReviewBefore")
	public String order(@RequestParam("crew_no") int crew_no, Model model) {

		model.addAttribute("relist" , reviewservice.selectReview(crew_no));
		
		model.addAttribute("list", service.selectAllList(crew_no));
		return "/mypage/myReviewBefore";
	}

}
