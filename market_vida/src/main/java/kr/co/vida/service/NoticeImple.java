package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dao.NoticeDAO;
import kr.co.vida.dto.NoticeDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("NoticeService")
public class NoticeImple implements VidaService<NoticeDTO> {
	
	@Autowired
	NoticeDAO dao;
	
	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<NoticeDTO> selectAllList() {
		log.info("dao : " + dao );
		return  dao.getListAll();
	}

	// 오버로딩
	public List<NoticeDTO> selectAllList(int startNo, int endNo) {
		log.info("dao : " + dao );
		return dao.getListAll(startNo,endNo);
	}

	@Override
	public NoticeDTO selectOne(int no) {
		return dao.getOne(no);
		
	}

	@Override
	public void insertOne(NoticeDTO dto) {
		dao.addOne(dto);
	}

	@Override
	public void updateOne(NoticeDTO dto) {
		dao.modifyOne(dto);
	}

	@Override
	public void dropOne(int no) {
		dao.deleteOne(no);
	}
	
	public int getTotal() {
		return dao.getTotal();
		
	}

	public void raiseHits(int bno) {
		// TODO Auto-generated method stub
		
	}


}
