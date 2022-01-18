package kr.co.vida.control;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.vida.dto.PageUtil;
import kr.co.vida.dto.ReviewBoardDTO;
import kr.co.vida.service.OrdersImple;
import kr.co.vida.service.ReviewBoardImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class ReviewBoardController {
	
	@Autowired
	ReviewBoardImple service;
	
	@Autowired
	OrdersImple ordersservice;
	
	@RequestMapping("/myReviewAfter")
	public ModelAndView list(Model model, @RequestParam(name = "currentPage", defaultValue = "1") int currentPage, @RequestParam("crew_no") int crew_no) {

		int totalNumber = service.getTotal();
	
		int countPerPage = 10;

		Map<String, Object> map = PageUtil.getPageData(totalNumber, countPerPage, currentPage);
	
		model.addAttribute("map", map);
		
		int no = 1;
		int startNo = (int) map.get("startNo");
		int endNo = (int) map.get("endNo");	
		
		
		model.addAttribute("relist", service.selectReview(crew_no));
		
		return new ModelAndView("/mypage/myReviewAfter", "reviewlist", service.selectAllList(no, startNo, endNo));
	}
	
	@GetMapping("/reviewWrite")
	public String writeForm(@RequestParam("crew_no")int crew_no , Model model , HttpServletRequest req) {
		
		String goods = req.getParameter("goods_no");
		String order = req.getParameter("order_no");
		
		int goods_no = Integer.parseInt(goods);
		int order_no = Integer.parseInt(order);
		
		model.addAttribute("dto",ordersservice.selectAllList(crew_no, goods_no, order_no));
		
		return "/mypage/reviewWriteForm";
	}

	@PostMapping("/reviewWrite")
	public String writeFormOk(@ModelAttribute("dto") ReviewBoardDTO dto, HttpServletRequest req , @RequestParam("crew_no")int crew_no , RedirectAttributes redirectAttributes) {
		
		redirectAttributes.addAttribute("crew_no", crew_no);
		
		service.insertOne(dto);
		return "redirect:/mypage/myReviewAfter";
	}
	
	@GetMapping("/reviewModify")
	public String modifyFrom(@RequestParam("review_no") int review_no, Model model) {
		ReviewBoardDTO dto = service.review(review_no);
		model.addAttribute("dto", dto);
		return "/mypage/reviewModifyForm";
	}

	@PostMapping("/reviewModify")
	public String modifyOk(@ModelAttribute("dto") ReviewBoardDTO dto ,@RequestParam("crew_no")int crew_no ,RedirectAttributes redirectAttributes) {
		service.updateOne(dto);
		
		redirectAttributes.addAttribute("crew_no", crew_no);
		
		return "redirect:/mypage/myReviewAfter";
	}
	
	@GetMapping("/reviewDelete")
	public String deleteOne(@RequestParam("review_no") int review_no ,@RequestParam("crew_no")int crew_no ,RedirectAttributes redirectAttributes) {
		
		service.dropOne(review_no);
		
		redirectAttributes.addAttribute("crew_no", crew_no);
		
		return "redirect:/mypage/myReviewAfter";
	}
	
	
}
