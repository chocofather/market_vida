package kr.co.vida.control;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.GoodsQnaDTO;
import kr.co.vida.dto.PageUtil;
import kr.co.vida.service.GoodsQnaImple;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("admin")
public class GoodsQnaAdminController {
	
	@Autowired
	GoodsQnaImple goodsQnaService;

	// 문의 리스트
	@RequestMapping("/goodsQnaAdmin")
	public String goodsQnaList(@RequestParam(name = "currentPage", defaultValue="1")int currentPage, Model model) {
		
		int totalNumber = goodsQnaService.getTotal();
		
		int countPerPage = 10;
		
		Map<String, Object> map = PageUtil.getPageData(totalNumber, countPerPage, currentPage);

		System.out.println(map.get("prev"));
		System.out.println(map.get("next"));
		
		model.addAttribute("map", map);

		int startNo = (int) map.get("startNo");
		int endNo =(int) map.get("endNo");
		
		model.addAttribute("goodsQnaDto", goodsQnaService.selectAllList(startNo, endNo));
		
		return "goods/goodsQnaAdmin";
	}
	
	
	// 문의 디테일
	@GetMapping("/goodsQnaDetailAdmin")
	public ModelAndView goodsQnaDetail(@RequestParam("goods_qna_no")int goods_qna_no) {
		return new ModelAndView("goods/goodsQnaDetailAdmin", "goodsQnaDto", goodsQnaService.selectOne(goods_qna_no));
	}
	
	// 답변 업로드
	@PostMapping("/qnaAnswerUpdate")
	public String qnaAnswerUpdate(@RequestParam("goods_qna_no")int goods_qna_no,
									@RequestParam("goods_qna_answer")String goods_qna_answer, GoodsQnaDTO goodsQnaDto) {
		goodsQnaService.updateAnswer(goodsQnaDto);
		return "redirect:goodsQnaAdmin";
	}
	
	// 문의글 1건 삭제
	@GetMapping("/deleteGoodsQna")
	public String deleteGoodsQna(@RequestParam("goods_qna_no")int goods_qna_no) {
		goodsQnaService.dropOne(goods_qna_no);
		return "redirect:goodsQnaAdmin";
	}
	
	// 문의글 여러개 삭제
	@GetMapping("/deleteGoodsQnaAjax")
	@ResponseBody
	public String deleteGoodsQnaAjax(@RequestParam List<String> goods_qna_no) {
		
		for (String goodsQnaNo:goods_qna_no) {
			goodsQnaService.dropOne(Integer.parseInt(goodsQnaNo));
		}
		
		return "delete Success";
	}
	

}
