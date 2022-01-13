package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.MainCatDTO;

@Repository
public class MainCatDAO implements Dao<MainCatDTO> {
	
	@Autowired
	SqlSession ss;

	@Override
	public List<MainCatDTO> getListAll() {
		return ss.selectList("kr.co.vida.mainCatcode.selectAll");
	}

	@Override
	public MainCatDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.mainCatcode.selectOne", no);
	}

	@Override
	public void addOne(MainCatDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(MainCatDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
