package kr.co.vida.control;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.GoodsDTO;
import kr.co.vida.dto.LikeDTO;
import kr.co.vida.service.GoodsImple;
import kr.co.vida.service.ImgListImple;
import kr.co.vida.service.LikeImple;

@Controller
public class LikeController {
	
	@Autowired
	LikeImple service;
	
	@Autowired
	ImgListImple imgService;
	
	@Autowired
	GoodsImple goodsService;
	
	// 찜목록 db에 저장
	@PostMapping("/mypage/myFavoriteList")
	public void insert(@RequestBody int goodsNo, HttpServletRequest req ) {
		
		HttpSession session = req.getSession(true);
		int crewNo = (int)session.getAttribute("crew_no");

		int no = service.likeCheck(crewNo, goodsNo);
//		System.out.println(no);
		if(no==0) {
			LikeDTO dto = new LikeDTO(crewNo, goodsNo);
			service.insert(dto);
		}
	}
	
	// 찜목록 불러오기
	@GetMapping("/mypage/myFavoriteList")
	public String likeList(Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession(true);
		int crewNo = (int)session.getAttribute("crew_no");

		List<LikeDTO> dtoList = service.getList(crewNo);
		List<String> imgList = new ArrayList<>();
		List<String> goodsNameList = new ArrayList<>();
		
		for(LikeDTO dto : dtoList) {
			int goodsNo = dto.getGoods_no();
			imgList.add(imgService.selectMainImage(goodsNo));
			
			goodsNameList.add(goodsService.selectOne(goodsNo).getGoods_name());
		}
		
		model.addAttribute("goodsImg", imgList);
		model.addAttribute("goodsName", goodsNameList);
		model.addAttribute("list", service.getList(crewNo));

		
		return "/mypage/myFavoriteList";
	}
	
	@DeleteMapping("/mypage/myFavoriteList/delete")
	public ResponseEntity delete(@RequestBody Integer[] ajaxMsg, HttpServletRequest req) {
		
		HttpSession session = req.getSession(true);
		int crewNo = (int)session.getAttribute("crew_no");
		
		for(int i=0; i<ajaxMsg.length; i++ ) {
			LikeDTO dto = new LikeDTO(crewNo, ajaxMsg[i]);
			service.dropOne(dto);
			
		}
		return ResponseEntity.ok().build();
	}

}
