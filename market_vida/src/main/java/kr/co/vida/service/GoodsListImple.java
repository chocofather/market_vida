package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.ImgDTO;

@Component
public class GoodsListImple implements VidaService<ImgDTO>{
	
	@Autowired
	Dao<ImgDTO> dao;

	@Override
	public List<ImgDTO> selectAllList() {
		return dao.getListAll();
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
