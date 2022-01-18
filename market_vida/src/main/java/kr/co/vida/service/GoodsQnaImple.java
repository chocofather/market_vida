package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.GoodsQnaDAO;
import kr.co.vida.dto.GoodsQnaDTO;

@Service
public class GoodsQnaImple implements VidaService<GoodsQnaDTO>{
	
	@Autowired
	GoodsQnaDAO dao;
	
	public List<GoodsQnaDTO> selectAllList(int startNo, int endNo) {
		return dao.getListAll(startNo, endNo);
	}
	
	public void updateAnswer(GoodsQnaDTO dto) {
		dao.updateAnswer(dto);
	}
	
	public List<GoodsQnaDTO> selectAllList(int no) {
		return dao.getListAll(no);
	}
	
	@Override
	public List<GoodsQnaDTO> selectAllList() {
		return dao.getListAll();
	}

	@Override
	public GoodsQnaDTO selectOne(int no) {
		return dao.getOne(no);
	}

	@Override
	public void insertOne(GoodsQnaDTO dto) {
		dao.addOne(dto);
	}

	@Override
	public void updateOne(GoodsQnaDTO dto) {
		dao.modifyOne(dto);
	}

	@Override
	public void dropOne(int no) {
		dao.deleteOne(no);
	}
	
	public int getTotal() {
		return dao.getTotal();
	}
	

}
