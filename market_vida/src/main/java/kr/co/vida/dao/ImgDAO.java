package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.ImgDTO;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class ImgDAO implements Dao<ImgDTO> {
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<ImgDTO> getListAll() {
		log.info("ss========>",ss);
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





}
