package kr.co.vida.control;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.vida.dto.GoodsQnaDTO;
import kr.co.vida.service.GoodsQnaImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/goods")
public class GoodsQnaController {
	
	@Autowired
	GoodsQnaImple goodsQnaService;
	
	// 상품문의 쓰기
	@RequestMapping("/writeGoodsQna")
	@ResponseBody
	public String writeGoodsQna(@RequestParam("goods_no")int goods_no,
								@RequestParam("goods_qna_title")String goods_qna_title,
								@RequestParam("goods_qna_contents")String goods_qna_contents,
								@RequestParam("qna_lock")int qna_lock,
								GoodsQnaDTO goodsQnaDto ) {

		goodsQnaDto.setCrew_id("aaa");
		goodsQnaDto.setCrew_no(14);
		log.info("goodsQnaDto======>"+goodsQnaDto);
		goodsQnaService.insertOne(goodsQnaDto);
		
		return "writeSuccess";
	}
	
	
	// 수정할 상품문의 게시글 select
	@GetMapping(value = "/modifyGoodsQna", produces =  MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, Object> modifyGoodsQna(@RequestParam("goods_qna_no")int goods_qna_no) {
		
		HashMap<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("goodsQnaDto", goodsQnaService.selectOne(goods_qna_no));
		return dataMap;
	}
	
	
	// 상품문의 수정
	@GetMapping("/modifyGoodsQnaOk")
	@ResponseBody
	public String modifyGoodsQnaOk(@RequestParam("goods_qna_no")int goods_qna_no,
									@RequestParam("goods_qna_title")String goods_qna_title,
									@RequestParam("goods_qna_contents")String goods_qna_contents,
									GoodsQnaDTO goodsQnaDto) {
		
		goodsQnaService.updateOne(goodsQnaDto);
		return "modifySuccess";
	}
	
	
	
	// 상품문의 삭제	
	@RequestMapping("/deleteGoodsQna")
	@ResponseBody
	public String deleteGoodsQna(@RequestParam("goods_qna_no")int goods_qna_no) {
		log.info("goods_qna_no=======>"+goods_qna_no);
		goodsQnaService.dropOne(goods_qna_no);
		
		return "deleteSuccess";
	}
		

}
