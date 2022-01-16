package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.vida.dto.QuestionDTO;

public class QuestionDAO implements Dao<QuestionDTO>{

	@Autowired
	private SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	@Override
	public List<QuestionDTO> getListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QuestionDTO getOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addOne(QuestionDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(QuestionDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

	

}
