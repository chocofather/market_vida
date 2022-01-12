package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dto.OrdersDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class OrdersController {
	
	@Autowired
	@Qualifier("OrdersImple")
	VidaService<OrdersDTO> service;

	public void setService(VidaService<OrdersDTO> service) {
		this.service = service;
	}
	
	@RequestMapping("orderList")
	public String orderList(Model model) {
		model.addAttribute("list", service.selectAllList());
		return "/main/main";
	}
	
}
