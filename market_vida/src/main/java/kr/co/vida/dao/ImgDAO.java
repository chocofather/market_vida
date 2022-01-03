package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.ImgDTO;

@Repository
public class ImgDAO implements Dao<ImgDTO> {
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<ImgDTO> getImgAll() {
		return null;
	}

	@Override
	public ImgDTO getImgOne(int imgNo) {
		return ss.selectOne("kr.co.vida.dao.getImgOne", imgNo);
	}

	@Override
	public void updateImg(ImgDTO imgDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyImg(ImgDTO imgDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int imgNo) {
		// TODO Auto-generated method stub
		
	}


}
