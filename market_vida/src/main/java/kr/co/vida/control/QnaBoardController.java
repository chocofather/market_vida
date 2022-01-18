package kr.co.vida.control;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.vida.dto.QnaBoardDTO;
import kr.co.vida.service.MainCatImple;
import kr.co.vida.service.QnaBoardImple;

@Controller
public class QnaBoardController {
	@Autowired
	QnaBoardImple service;
	
	@Autowired
	MainCatImple mainCodesvc;
	
	@RequestMapping("/board/qna")
	public String qna(@RequestParam("crew_no")int crew_no ,Model model) {
		model.addAttribute("mainCode", mainCodesvc.selectAllList());
		model.addAttribute("list",service.getListAll(crew_no));
		return "board/qnaBoard";
	}
	
	@RequestMapping("/board/qnaAnswer")
	public String qna(Model model) {
		model.addAttribute("mainCode", mainCodesvc.selectAllList());
		model.addAttribute("list",service.selectAllList());
		return "board/qnaBoard";
	}
	
	@GetMapping("/board/writeQnaAnswer")
	public String writeQnaAnswerForm(@RequestParam("qna_no")int qna_no, Model model) {
		QnaBoardDTO dto =  service.selectOne(qna_no);
		model.addAttribute("dto", dto);
		return "board/writeQnaAnswerForm";
	}
	
	@PostMapping("/board/writeQnaAnswer")
	public String writeQnaAnswer(@ModelAttribute("dto")QnaBoardDTO dto) {
		service.Answer(dto); 
		return "redirect:/board/qnaAnswer";
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
