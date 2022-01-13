package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.QnaBoardDTO;

@Service
public class QnaBoardImple implements VidaService<QnaBoardDTO>{
	@Autowired
	Dao<QnaBoardDTO> dao;
	
	public void setDao(Dao<QnaBoardDTO> dao) {
		this.dao = dao;
	}

	@Override
	public List<QnaBoardDTO> selectAllList() {
		return dao.getListAll();
	}

	@Override
	public QnaBoardDTO selectOne(int no) {
		return dao.getOne(no);
	}

	@Override
	public void insertOne(QnaBoardDTO dto) {
		dao.addOne(dto);
	}

	@Override
	public void updateOne(QnaBoardDTO dto) {
		dao.modifyOne(dto);
	}

	@Override
	public void dropOne(int no) {
		dao.deleteOne(no);
	}

}
