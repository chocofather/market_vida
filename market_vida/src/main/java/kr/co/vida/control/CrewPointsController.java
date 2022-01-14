package kr.co.vida.control;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.PageUtil;
import kr.co.vida.service.CrewPointsImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class CrewPointsController {

	@Autowired
	CrewPointsImple service;

	@RequestMapping("/myMileage")
	public ModelAndView list(Model model, @RequestParam(name = "currentPage", defaultValue = "1") int currentPage) {

		
		int totalNumber = service.getTotal();
	
		int countPerPage = 10;

		Map<String, Object> map = PageUtil.getPageData(totalNumber, countPerPage, currentPage);
	
		model.addAttribute("map", map);
		
		int no = 1;
		int startNo = (int) map.get("startNo");
		int endNo = (int) map.get("endNo");	
		
		return new ModelAndView("/mypage/myMileage", "list", service.selectAllList(no, startNo, endNo));
	}
	
	/*
	 * @RequestMapping("/myMileage") public String myMileage(Model model) {
	 * model.addAttribute("list", service.selectAllList(1)); return
	 * "/mypage/myMileage"; }
	 */
	
}
