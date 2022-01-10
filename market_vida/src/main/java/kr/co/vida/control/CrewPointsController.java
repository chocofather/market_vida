package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dto.CrewPointsDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class CrewPointsController {

	@Autowired
	@Qualifier("CrewPointService")
	VidaService<CrewPointsDTO> service;

	public void setService(VidaService<CrewPointsDTO> service) {
		this.service = service;
	}
	
	@RequestMapping("/myMileage")
	public String myMileage(Model model) {
		model.addAttribute("list", service.selectAllList(1));
		return "/mypage/myMileage";
	}
	
}
