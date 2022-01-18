package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.ReviewBoardDAO;
import kr.co.vida.dto.ReviewBoardDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("ReviewBoardImple")
public class ReviewBoardImple implements VidaService<ReviewBoardDTO>{
	
	@Autowired
	ReviewBoardDAO dao;
	
	public List<ReviewBoardDTO> getListAllByGoodsNo(int no){
		return dao.getListAllByGoodsNo(no);
	}
	
	@Override
	public List<ReviewBoardDTO> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewBoardDTO selectOne(int no) {
		return dao.getOne(no);
	}

	@Override
	public void insertOne(ReviewBoardDTO dto) {
		dao.addOne(dto);
	}

	@Override
	public void updateOne(ReviewBoardDTO dto) {
		dao.modifyOne(dto);
	}

	@Override
	public void dropOne(int no) {
		dao.deleteOne(no);
	}
	
	public List<ReviewBoardDTO> selectAllList(int no , int startNo , int endNo ) {
		return dao.getListAll(no, startNo, endNo);
	}
	
	public int getTotal() {
		return dao.getTotal();
		
	}
	
	public ReviewBoardDTO review(int no) {
		return dao.reviewOne(no);
	}
	
}
