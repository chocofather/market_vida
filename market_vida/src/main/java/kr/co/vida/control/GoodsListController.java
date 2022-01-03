package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dao.Dao;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class GoodsListController {
	
	@Autowired
	Dao dao;
	
	@RequestMapping("/")
	public ModelAndView test() {
		
		return new ModelAndView("goodsList/shTest", "dto", dao.getImgOne(1));
		
	}

}
