package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dao.GoodsDAO;
import kr.co.vida.dto.GoodsDTO;

@Service("GoodsImple")
public class GoodsImple implements VidaService<GoodsDTO> {
	
	@Autowired
	GoodsDAO dao;

	@Override
	public List<GoodsDTO> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GoodsDTO selectOne(int no) {
		return dao.getOne(no);
	}

	@Override
	public void insertOne(GoodsDTO dto) {
		dao.addOne(dto);
	}

	@Override
	public void updateOne(GoodsDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		dao.deleteOne(no);
		
	}
	
	public int getTotal(int no) {
		return dao.getTotal(no);
	}

}
