package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.NoticeDTO;
import kr.co.vida.dto.StartEnd;

@Repository
public class NoticDAO implements Dao<NoticeDTO>{
	
	@Autowired
	private SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public List<NoticeDTO> getListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<NoticeDTO> getListAll(int startNo, int endNo) {
		StartEnd se = new StartEnd(startNo, endNo);
		System.out.println("ss : " + ss);
		return ss.selectList("kr.co.vida.selectAll", se);
	}

	@Override
	public NoticeDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.selectOne", no);
	}

	@Override
	public void addOne(NoticeDTO dto) {
		ss.insert("kr.co.vida.insertOne", dto);
		
	}

	@Override
	public void modifyOne(NoticeDTO dto) {
		ss.update("kr.co.jhta.board.updateOne" , dto);
		
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("kr.co.jhta.board.deleteOne" , no);
		
	}


}
