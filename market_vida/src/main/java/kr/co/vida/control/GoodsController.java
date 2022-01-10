package kr.co.vida.control;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.vida.service.ImgListImple;
import kr.co.vida.service.SubCatImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired
	ImgListImple svcImg;
	
	@Autowired
	SubCatImple subService;


	@GetMapping("/goodsList")
	public String test(Model model) {
	//	public String test(Model model, @RequestParam("main_cat_code")int main_cat_code) {
	//	메인과 결합 후 사용
		
		model.addAttribute("subDto", subService.getListAll(100));
		model.addAttribute("imgDto", svcImg.selectAllList());
	
		return "/goods/goodsList";

	}
	
	
	@PostMapping("/goodsListAjax")
	public @ResponseBody Map<String, Object> subCatGoodsList(@RequestParam("subCode")int subCode, Model model) {
//		model.addAttribute("imgBySubCod", imgDao.getListBySubCode(subCode));
		HashMap<String, Object> dataMap = new HashMap<String, Object>();
		HashMap<String, Object> data = new HashMap<String, Object>();
//		mav.addObject("imgBySubCod", imgDao.getListBySubCode(subCode));
		dataMap.put("imgBySubCod", data);
		log.info("subCode=====>"+subCode);

//		return new ModelAndView("/goods/goodsList", "imgBySubCod", svcImg.getListBySubCode(subCode));
		return dataMap;
	}
	
	

}
