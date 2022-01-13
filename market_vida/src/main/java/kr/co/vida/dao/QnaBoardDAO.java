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
		return ss.selectOne("kr.co.vida.qna.selectOne", no);
	}

	@Override
	public void addOne(QnaBoardDTO dto) {
		ss.insert("kr.co.vida.qna.insertOne", dto);
	}

	@Override
	public void modifyOne(QnaBoardDTO dto) {
		ss.update("kr.co.vida.qna.updateOne", dto);
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("kr.co.vida.qna.deleteOne", no);
	}

}
