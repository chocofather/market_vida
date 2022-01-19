package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dto.ImgDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
public class ImgController {
	
	@Autowired
	@Qualifier("ImgListImple")
	VidaService<ImgDTO> service;

	public void setService(VidaService<ImgDTO> service) {
		this.service = service;
	}
	
	@GetMapping("/imgwrite")
	public String writeForm() {
		return "/admin/imgRegister";
	}

	@PostMapping("/imgwrite")
	public String writeFormOk(@ModelAttribute("dto") ImgDTO dto, HttpServletRequest req) {
		service.insertOne(dto);
		return "redirect:/main/main";
	}
	
}
