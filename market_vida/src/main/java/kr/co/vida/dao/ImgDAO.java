package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CrewPointsDTO;
import kr.co.vida.dto.ImgDTO;

@Repository
public class ImgDAO implements Dao<ImgDTO> {
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<ImgDTO> getListAll() {
		return ss.selectList("kr.co.vida.dao.getImgAll");
	}

	@Override
	public ImgDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.dao.getImgOne", no);
	}

	@Override
	public void addOne(ImgDTO dto) {
		
	}

	@Override
	public void modifyOne(ImgDTO dto) {
		
	}

	@Override
	public void deleteOne(int no) {

		
	}

	@Override
	public List<CrewPointsDTO> getListAll(int no) {
		// TODO Auto-generated method stub
		return null;
	}





}
