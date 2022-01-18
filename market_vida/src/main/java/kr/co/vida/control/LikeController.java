package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.LikeDTO;
import kr.co.vida.service.LikeImple;

@Controller
public class LikeController {
	
	@Autowired
	LikeImple service;
	
	@PostMapping("/mypage/myFavoriteList")
	public void insert(@RequestBody int goodsNo, HttpServletRequest req ) {
		
		HttpSession session = req.getSession(true);
		int crewNo = (int)session.getAttribute("crew_no");

		int no = service.likeCheck(crewNo, goodsNo);
		System.out.println(no);
		if(no==0) {
			LikeDTO dto = new LikeDTO(crewNo, goodsNo);
			service.insert(dto);
		}
	}
	
	@GetMapping("/mypage/myFavoriteList")
	public String likeList(Model model, HttpServletRequest req) {
		
		HttpSession session = req.getSession(true);
		int crewNo = (int)session.getAttribute("crew_no");
				
		model.addAttribute("list", service.getList(crewNo));
		return "/mypage/myFavoriteList";
	}
	
//	@GetMapping("/mypage/myFavoriteList")
//	public String likeListImg(Model model) {
//						
//		//model.addAttribute("goodsImg", service.getListImg(goodsNo));
//		return "/mypage/myFavoriteList";
//	}
	
}
