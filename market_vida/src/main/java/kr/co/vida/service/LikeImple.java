package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.ImgDAO;
import kr.co.vida.dao.LikeDAO;
import kr.co.vida.dto.LikeDTO;

@Service
public class LikeImple {
	
	@Autowired
	LikeDAO dao;
	
	@Autowired
	ImgDAO imgDao;
	
	public void setImgDao(ImgDAO imgDao) {
		this.imgDao = imgDao;
	}

	public void setDao(LikeDAO dao) {
		this.dao = dao;
	}

	// 찜하기에 상품 추가
	public void insert (LikeDTO dto) {
		dao.insertOne(dto);
	}
	
	// 찜목록 불러오기
	public List<LikeDTO> getList(int crewNo) {
		return dao.getListById(crewNo);
	}
	
	// 이미 있는 상품인지 중복체크
	public int likeCheck(int crewNo, int goodsNo) {
		return dao.likeCheck(crewNo, goodsNo);
	}
		
		

}
