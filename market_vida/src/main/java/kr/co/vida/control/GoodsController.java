package kr.co.vida.control;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.vida.dto.GoodsDTO;
import kr.co.vida.dto.ImgDTO;
import kr.co.vida.service.VidaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("goods")
public class GoodsController {
	
	@Autowired
	@Qualifier("ImgListImple")
	VidaService<ImgDTO> svcImg;
	
	@Autowired
	@Qualifier("GoodsImple")
	VidaService<GoodsDTO> svcGoods;

	@RequestMapping("/goodsList")
	public String test(Model model) {
		log.info("service======>", svcGoods);
				
//		ArrayList<ImgDTO> imgDto = (ArrayList<ImgDTO>) svcImg.selectAllList();
//		ArrayList<GoodsDTO> goodsDto = new ArrayList<GoodsDTO>();
//		for (ImgDTO dto : imgDto) {
//			goodsDto.add(svcGoods.selectOne(dto.getGoods_no()));
//		}
//		
		
		model.addAttribute("imgDto", svcImg.selectAllList());
	//	model.addAttribute("goodsDto", goodsDto);
		
		
		return "/goods/goodsList";

	}

}
