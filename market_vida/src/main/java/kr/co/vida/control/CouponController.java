package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.vida.dto.CouponDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
public class CouponController {

	@Autowired
	@Qualifier("CouponService")
	VidaService<CouponDTO> service;

	public void setService(VidaService<CouponDTO> service) {
		this.service = service;
	}

	@RequestMapping("/couponList")
	public String couponList(Model model) {
		model.addAttribute("list", service.selectAllList());
		return "/admin/couponList";
	}

	@GetMapping("/write")
	public String writeForm() {
		return "/admin/couponWriteForm";
	}

	@PostMapping("/write")
	public String writeFormOk(@ModelAttribute("dto") CouponDTO dto, HttpServletRequest req) {
		service.insertOne(dto);
		return "redirect:/admin/couponList";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam("coupon_no") int coupon_no, Model model) {
		CouponDTO dto = service.selectOne(coupon_no);
		model.addAttribute("dto", dto);
		return "/admin/couponDetail";
	}
	
	@GetMapping("/modify")
	public String modifyFrom(@RequestParam("coupon_no") int coupon_no, Model model) {
		CouponDTO dto = service.selectOne(coupon_no);
		model.addAttribute("dto", dto);
		return "/admin/couponModifyForm";
	}

	@PostMapping("/modify")
	public String modifyOk(@ModelAttribute("dto") CouponDTO dto) {
		service.updateOne(dto);
		return "redirect:/admin/couponList";
	}
	
	@GetMapping("/delete")
	public String deleteOne(@RequestParam("coupon_no") int coupon_no) {
		service.dropOne(coupon_no);
		return "redirect:/admin/couponList";
	}
	
}
