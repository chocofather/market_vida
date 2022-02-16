package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.ImgDAO;
import kr.co.vida.dto.ImgDTO;
import kr.co.vida.dto.StartEnd;

@Service("ImgListImple")
public class ImgListImple implements VidaService<ImgDTO>{
	
	@Autowired
	ImgDAO dao;
	
	public List<ImgDTO> readAll(int StartNo, int endNo, int code){
		return dao.readAll(StartNo, endNo, code);
	}

	
	public List<ImgDTO> getGoodsImgs(int no){
		return dao.getAllImgbyGoods(no);
	}
	
	public int getTotalbyCode(int no) {
		return dao.getTotalbyCode(no);
	}
	
	
	@Override
	public List<ImgDTO> selectAllList() {
		return null;
	}
	

	@Override
	public ImgDTO selectOne(int no) {
		return null;
	}

	public String selectMainImage(int no) {
		return dao.getMainImage(no);
	}
	
	@Override
	public void insertOne(ImgDTO dto) {
		dao.addOne(dto);
	}

	@Override
	public void updateOne(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		dao.deleteOne(no);
	}

	


}
