package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CouponController {

	@Autowired
	@Qualifier("CouponBoxService")
	VidaService service;

	public void setService(VidaService service) {
		this.service = service;
	}

	@RequestMapping("/myCoupon")
	public String myCoupon() {
		return "myCoupon";
	}

}
