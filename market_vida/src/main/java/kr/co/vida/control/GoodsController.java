package kr.co.vida.control;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.vida.dao.SubCatDAO;
import kr.co.vida.dto.GoodsDTO;
import kr.co.vida.dto.ImgDTO;
import kr.co.vida.dto.SubCatDTO;
import kr.co.vida.service.SubCatImple;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired
	@Qualifier("ImgListImple")
	VidaService<ImgDTO> svcImg;
	
	@Autowired
	SubCatDAO subDao;


	@RequestMapping("/goodsList")
	public String test(Model model) {
	//	public String test(Model model, @RequestParam("main_cat_code")int main_cat_code) {
	//	메인과 결합 후 사용
		
		model.addAttribute("subDto", subDao.getListAll(100));
		model.addAttribute("imgDto", svcImg.selectAllList());
		
		return "/goods/goodsList";

	}

}
