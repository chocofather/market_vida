package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

	@RequestMapping("myCoupon")
	public String myCoupon(Model model) {
		model.addAttribute("list", service.selectAllList());
		return "/mypage/myCoupon";
	}
}
