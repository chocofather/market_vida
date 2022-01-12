package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.QnaBoardDTO;

@Repository
public class QnaBoardDAO implements Dao<QnaBoardDTO>{
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<QnaBoardDTO> getListAll() {
		return ss.selectList("kr.co.vida.qna.selectAll");
	}

	@Override
	public QnaBoardDTO getOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addOne(QnaBoardDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(QnaBoardDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
