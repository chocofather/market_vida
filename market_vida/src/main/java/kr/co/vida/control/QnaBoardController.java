package kr.co.vida.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaBoardController {
	@RequestMapping("qna")
	public String qna() {
		return "board/qnaBoard";
	}
}
