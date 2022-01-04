package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.NoticeDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class NoticeImple implements VidaService<NoticeDTO> {
	
	@Autowired
	Dao<NoticeDTO> dao;
	
	@Override
	public List<NoticeDTO> selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	// 오버로딩
	public List<NoticeDTO> selectAllList(int startNo, int endNo) {
		return dao.getListAll();
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



}
