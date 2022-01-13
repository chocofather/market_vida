package kr.co.vida.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
=======
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
>>>>>>> branch 'main' of https://github.com/chocofather/market_vida.git
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.vida.dto.GoodsDTO;
import kr.co.vida.dto.SubCatDTO;
import kr.co.vida.service.GoodsImple;
import kr.co.vida.service.ImgListImple;
import kr.co.vida.service.SubCatImple;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
public class GoodsController {
	
	@Autowired
	ImgListImple imgService;
	
	@Autowired
	SubCatImple subService;
	
	@Autowired
	GoodsImple goodsService;


	@GetMapping("/goods/goodsList")
	public String test(Model model) {
	//	public String test(Model model, @RequestParam("main_cat_code")int main_cat_code) {
	//	ï¿½ï¿½ï¿½Î°ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½
		
		
		return null;
	}
	

	@GetMapping("/goodsList")
	public String goodsList(@RequestParam("cat_code")int cat_code, Model model) {
	//	public String goodsList(Model model, @RequestParam("main_cat_code")int main_cat_code) {
<<<<<<< HEAD
	//	¸ÞÀÎ°ú °áÇÕ ÈÄ »ç¿ë
		log.info("subCode=====>"+cat_code);
=======
	//	ï¿½ï¿½ï¿½Î°ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½
>>>>>>> branch 'main' of https://github.com/chocofather/market_vida.git
		
		// ¸ÞÀÎ ÄÚµå 1°³¸¸ ±¸ÇÏ±â
		int forMainCode;	
		if(cat_code%100==0) {
			forMainCode = cat_code+1;
		}else {
			forMainCode = cat_code;
		}
		
		// Ä«Å×°í¸® ¸®½ºÆ® °´Ã¼
		SubCatDTO subDto = subService.selectOne(forMainCode);
		model.addAttribute("mainCode", subDto);
		model.addAttribute("subDtoList", subService.getListAll(subDto.getMain_cat_code()));
		
		// »óÇ° ¸®½ºÆ® °´Ã¼
		if (cat_code %100==0) {
			model.addAttribute("imgDto", imgService.selectAllList(cat_code));
		}else {
			model.addAttribute("imgDto", imgService.getListBySubCode(cat_code));
		}
		
		return "/goods/goodsList";
	}
	
<<<<<<< HEAD
	@RequestMapping("/deleteGoods")
=======
	@PostMapping("/goods/goodsListAjax")
	public @ResponseBody Map<String, Object> subCatGoodsList(@RequestParam("subCode")int subCode, Model model) {
//		model.addAttribute("imgBySubCod", imgDao.getListBySubCode(subCode));
		HashMap<String, Object> dataMap = new HashMap<String, Object>();
		HashMap<String, Object> data = new HashMap<String, Object>();
//		mav.addObject("imgBySubCod", imgDao.getListBySubCode(subCode));
		dataMap.put("imgBySubCod", data);
		return dataMap;
	}
	
	@GetMapping(value = "/goodsListAjax", produces = MediaType.APPLICATION_JSON_VALUE)
>>>>>>> branch 'main' of https://github.com/chocofather/market_vida.git
	@ResponseBody
<<<<<<< HEAD
	public String deleteGoods(HttpServletRequest req){
		String []chkBoxList = req.getParameterValues("deletecb");
		for (String goodsNo : chkBoxList) {
			System.out.println(goodsNo);
		}
		return "delete success";
=======
	public Map<String, Object> subCatGoodsList(@RequestParam("subCode")int subCode) {

		log.info("subCode=====>"+subCode);
		
		HashMap<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("imgBySubCode", imgService.getListBySubCode(subCode));
		
		return dataMap;
>>>>>>> branch 'main' of https://github.com/chocofather/market_vida.git
	}
	
	
	// »óÇ° µðÅ×ÀÏ ÆäÀÌÁö ÀÌµ¿
	@GetMapping("/goodsDetail")
	public String goodsDetail(@RequestParam("goods_no")int goods_no, Model model) {
		
		GoodsDTO goodsDto = goodsService.selectOne(goods_no);
		
		model.addAttribute("goodsDto", goodsDto);
		model.addAttribute("detailImgDto", imgService.getGoodsImgs(goodsDto.getGoods_no()));
		
		return "goods/goodsDetail";
	}
	
	
	@GetMapping("/admin/goodswrite")
	public String writeForm() {
		return "/admin/productRegister";
	}

	@PostMapping("/admin/goodswrite")
	public String writeFormOk(@ModelAttribute("dto") GoodsDTO dto, HttpServletRequest req) {
		goodsService.insertOne(dto);
		return "redirect:/main";
	}

}
