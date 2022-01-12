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

	public List<ImgDTO> getListAll(int no) {
		return ss.selectList("kr.co.vida.getMainImg");
	}
	
	public List<ImgDTO> getListBySubCode(int no) {
		return ss.selectList("kr.co.vida.getMainImgBySubCode", no);
	}
	
	@Override
	public List<ImgDTO> getListAll() {
		return ss.selectList("kr.co.vida.getMainImg");
	}

	@Override
	public ImgDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.getImgOne", no);
	}

	@Override
	public void addOne(ImgDTO dto) {
		ss.insert("kr.co.vida.insertImgOne" , dto);
	}

	@Override
	public void modifyOne(ImgDTO dto) {
		
	}

	@Override
	public void deleteOne(int no) {

		
	}





}