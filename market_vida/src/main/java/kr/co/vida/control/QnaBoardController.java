package kr.co.vida.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dto.QnaBoardDTO;
import kr.co.vida.service.QnaBoardImple;

@Controller
@RequestMapping("/board")
public class QnaBoardController {
	@Autowired
	QnaBoardImple service;
	
	@RequestMapping("/qna")
	public String qna(Model model) {
		model.addAttribute("list",service.selectAllList());
		return "board/qnaBoard";
	}
	
	@GetMapping("/writeQna")
	public String writeQnaForm() {
		return "board/writeQnaForm";
	}
	
	@PostMapping("/writeQna")
	public String writeQna(@ModelAttribute("dto")QnaBoardDTO dto) {
		service.insertOne(dto);
		return "redirect:/board/qna";
	}
	
	@GetMapping("/detail")
	public String detailQna(@RequestParam("qna_no")int qna_no, Model model) {
		QnaBoardDTO dto =  service.selectOne(qna_no);
		model.addAttribute("dto", dto);
		return "board/qnaBoardDetail";
	}
	
	@GetMapping("/modify")
	public String modifyForm(@RequestParam("qna_no")int qna_no, Model model) {
		QnaBoardDTO dto =  service.selectOne(qna_no);
		model.addAttribute("dto", dto);
		return "board/qnaModifyForm";
	}
	
	@PostMapping("/modify")
	public String modifyQna(@ModelAttribute("dto")QnaBoardDTO dto) {
		service.updateOne(dto);
		return "redirect:/board/qna";
	}
	
	@GetMapping("/delete")
	public String deleteQna(@RequestParam("qna_no")int qna_no) {
		service.dropOne(qna_no);
		return "redirect:/board/qna";
	}
}
