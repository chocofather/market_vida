package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.service.CrewPointsImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class CrewPointsController {

	@Autowired
	CrewPointsImple service;

	
	@RequestMapping("/myMileage")
	public String myMileage(Model model) {
		model.addAttribute("list", service.selectAllList(1));
		return "/mypage/myMileage";
	}
	
}
