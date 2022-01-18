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

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.PageUtil;
import kr.co.vida.service.CouponBoxImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CouponBoxController {

	@Autowired
	CouponBoxImple service;
	
	@RequestMapping("/mypage/myCoupon")
	public ModelAndView list(Model model, @RequestParam(name = "currentPage", defaultValue = "1") int currentPage) {

		
		int totalNumber = service.getTotal();
	
		int countPerPage = 10;

		Map<String, Object> map = PageUtil.getPageData(totalNumber, countPerPage, currentPage);
	
		model.addAttribute("map", map);
		
		int no = 2;
		int startNo = (int) map.get("startNo");
		int endNo = (int) map.get("endNo");	
		
		return new ModelAndView("/mypage/myCoupon", "list", service.selectAllList(no, startNo, endNo));
	}
	
	
	/*
	 * @RequestMapping("/mypage/myCoupon") public String myCoupon(Model model) {
	 * model.addAttribute("list", service.selectAllList(1)); return
	 * "/mypage/myCoupon"; }
	 */

	@GetMapping("/payments")
	public String paymentsForm() {
		return "/admin/couponPaymentsForm";
	}

	@PostMapping("/payments")
	public String paymentsFormOk(@ModelAttribute("dto") CouponBoxDTO dto, HttpServletRequest req) {
		service.insertOne(dto);
		return "redirect:/admin/couponList";
	}

}
