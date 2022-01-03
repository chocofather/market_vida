package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.ImgDTO;

@Repository
public class ImgDAO implements Dao<ImgDTO> {
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<ImgDTO> getListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ImgDTO getOne(int no) {
		return null;
	}

	@Override
	public void addOne(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(ImgDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}





}
