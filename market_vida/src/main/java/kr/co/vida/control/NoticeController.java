package kr.co.vida.control;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.vida.dao.NoticeDAO;
import kr.co.vida.dto.NoticeDTO;
import kr.co.vida.dto.PageUtil;
import kr.co.vida.service.NoticeImple;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class NoticeController {
	
	@Qualifier("NoticeService")
	@Autowired
	NoticeImple service;

	public void setService(NoticeImple service) {
		this.service = service;
	}


	@RequestMapping("/board/noticeBoard")
	public ModelAndView list(Model model,
			@RequestParam(name="currentPage", defaultValue = "1")int currentPage) { 
		
		int totalNumber = service.getTotal();
		
		int countPerPage = 10;
		
		Map<String, Object> map = PageUtil.getPageData(totalNumber, countPerPage, currentPage);

		model.addAttribute("map", map);

		int startNo = (int) map.get("startNo");
		int endNo =(int) map.get("endNo");
		
		return new ModelAndView("/board/noticeBoard","list", service.selectAllList(startNo, endNo));
	}
	
	@GetMapping("/board/writeNoticeForm")
	public String writeForm() {
		return "/board/writeNoticeForm";
	}
	
	@PostMapping("/board/writeNoticeForm")
	public String write(@ModelAttribute("dto")NoticeDTO dto, HttpServletRequest req ) {
		System.out.println("dto : " + dto);
		//dto.setIp(req.getRemoteAddr());
		service.insertOne(dto);
		return "redirect:/board/noticeBoard";
	}
	
	@RequestMapping("/board/noticeBoardDetail")
	public String detail(@RequestParam("notice_no")int notice_no, Model model) {

		NoticeDTO dto = service.selectOne(notice_no);
		model.addAttribute("dto", dto);
		return "board/noticeBoardDetail";
	}
	
	@GetMapping("/board/modify")
	public String modifyForm(@RequestParam("notice_no")int notice_no, Model model) {
		
		NoticeDTO dto = service.selectOne(notice_no);
		model.addAttribute("dto", dto);
		return "/board/noticeModifyForm";
	}
	
	@PostMapping("/board/modify")
	public String modifyOk(@ModelAttribute("dto")NoticeDTO dto) {
		
		service.updateOne(dto);
		return "redirect:/board/noticeBoard";
	}
	

	@GetMapping("/board/delete")
	public String deleteOne(@RequestParam("notice_no")int notice_no) {
		service.dropOne(notice_no);
		return "redirect:/board/noticeBoard";
	}
}
