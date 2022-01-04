package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dto.CouponDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CouponController {

	@Autowired
	@Qualifier("CouponService")
	VidaService<CouponDTO> service;

	public void setService(VidaService<CouponDTO> service) {
		this.service = service;
	}
	
	@RequestMapping("/admin/couponList")
	public String couponList(Model model) {
		model.addAttribute("list", service.selectAllList());
		return "/admin/couponList";
	}
	

}
