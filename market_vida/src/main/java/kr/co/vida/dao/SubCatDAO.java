package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.SubCatDTO;

@Repository("SubCatDAO")
public class SubCatDAO implements Dao<SubCatDTO> {

	@Autowired
	SqlSession ss;
	
	public List<SubCatDTO> getListAll(int no) {
		return ss.selectList("kr.co.vida.subCat.getListAll", no);
	}

	@Override
	public List<SubCatDTO> getListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubCatDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.subCat.getOne", no);
	}

	@Override
	public void addOne(SubCatDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifyOne(SubCatDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub

	}

}
