package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.ImgDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired(required = true)
	@Qualifier(value = "ImgListImple")
	VidaService<ImgDTO> service;

	@RequestMapping("/goodsList")
	public ModelAndView test() {
		log.info("service======>", log);
		return new ModelAndView("/goodsList", "list", service.selectAllList());

	}

}
