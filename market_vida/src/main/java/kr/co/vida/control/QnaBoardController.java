package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.service.QnaBoardImple;

@Controller
public class QnaBoardController {
	@Autowired
	QnaBoardImple service;
	
	@RequestMapping("/qna")
	public String qna(Model model) {
		model.addAttribute("list",service.selectAllList());
		return "board/qnaBoard";
	}
}
