package kr.co.vida.control;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.GoodsDTO;
import kr.co.vida.service.GoodsImple;
import kr.co.vida.service.ImgListImple;
import kr.co.vida.service.SubCatImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired
	ImgListImple imgService;
	
	@Autowired
	SubCatImple subService;
	
	@Autowired
	GoodsImple goodsService;
	

	@GetMapping("/goodsList")
	public String goodsList(Model model) {
	//	public String goodsList(Model model, @RequestParam("main_cat_code")int main_cat_code) {
	//	메인과 결합 후 사용
		
		model.addAttribute("subDto", subService.getListAll(100));
		model.addAttribute("imgDto", imgService.selectAllList(100));
	
		return "/goods/goodsList";

	}
	
	@GetMapping(value = "/goodsListAjax", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, Object> subCatGoodsList(@RequestParam("subCode")int subCode) {
		log.info("subCode=====>"+subCode);
		HashMap<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("imgBySubCode", imgService.getListBySubCode(subCode));
		
		return dataMap;
	}
	
	@GetMapping("/goodsDetail")
	public String goodsDetail(@RequestParam("goods_no")int goods_no, Model model) {
		GoodsDTO goodsDto = goodsService.selectOne(goods_no);
		
		model.addAttribute("goodsDto", goodsDto);
		model.addAttribute("detailImgDto", imgService.getGoodsImgs(goodsDto.getGoods_no()));
		
		return "goods/goodsDetail";
	}
	
	

}
