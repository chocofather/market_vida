package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dao.ImgDAO;
import kr.co.vida.dto.ImgDTO;

@Service("ImgListImple")
public class ImgListImple implements VidaService<ImgDTO>{
	
	@Autowired
	ImgDAO dao;
	

	public List<ImgDTO> selectAllList(int no) {
		return dao.getListAll(no);
	}
	
	public List<ImgDTO> getListBySubCode(int no) {
		return dao.getListBySubCode(no);
	}
	
	public List<ImgDTO> getGoodsImgs(int no){
		return dao.getAllImgbyGoods(no);
	}
	
	@Override
	public List<ImgDTO> selectAllList() {
		return null;
	}
	

	@Override
	public ImgDTO selectOne(int no) {
		return dao.getOne(no);
	}

	@Override
	public void insertOne(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}


}
