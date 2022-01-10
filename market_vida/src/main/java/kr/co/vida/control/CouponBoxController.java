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

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CouponBoxController {

	@Autowired
	@Qualifier("CouponBoxService")
	VidaService<CouponBoxDTO> service;

	public void setService(VidaService<CouponBoxDTO> service) {
		this.service = service;
	}

	@RequestMapping("/mypage/myCoupon")
	public String myCoupon(Model model) {
		model.addAttribute("list", service.selectAllList(1));
		return "/mypage/myCoupon";
	}

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
