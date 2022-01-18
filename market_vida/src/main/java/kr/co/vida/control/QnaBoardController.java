package kr.co.vida.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.vida.dto.QnaBoardDTO;
import kr.co.vida.service.QnaBoardImple;

@Controller
public class QnaBoardController {
	@Autowired
	QnaBoardImple service;
	
	@RequestMapping("/board/qna")
	public String qna(Model model) {
			model.addAttribute("list",service.selectAllList());
		return "board/qnaBoard";
	}
	
	@GetMapping("board/writeQna")
	public String writeQnaForm() {
		return "board/writeQnaForm";
	}
	
	@PostMapping("board/writeQna")
	public String writeQna(@ModelAttribute("dto")QnaBoardDTO dto) {
		service.insertOne(dto);
		return "redirect:/board/qna";
	}
	
	@GetMapping("board/detail")
	public String detailQna(@RequestParam("qna_no")int qna_no, Model model) {
		QnaBoardDTO dto =  service.selectOne(qna_no);
		model.addAttribute("dto", dto);
		return "board/qnaBoardDetail";
	}
	
	@GetMapping("board/modifyQna")
	public String modifyForm(@RequestParam("qna_no")int qna_no, Model model) {
		QnaBoardDTO dto =  service.selectOne(qna_no);
		model.addAttribute("dto", dto);
		return "board/qnaModifyForm";
	}
	
	@PostMapping("board/modifyQna")
	public String modifyQna(@ModelAttribute("dto")QnaBoardDTO dto) {
		service.updateOne(dto);
		return "redirect:/board/qna";
	}
	
	@GetMapping("board/deleteQna")
	public String deleteQna(@RequestParam("qna_no")int qna_no) {
		service.dropOne(qna_no);
		return "redirect:/board/qna";
	}
	
	@GetMapping("board/main")
	public String main() {
		return "redirect:/main/main";
	}
}
