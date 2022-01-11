package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.NoticeDTO;
import kr.co.vida.dto.StartEnd;

@Repository
public class NoticeDAO implements Dao<NoticeDTO>{
	
	@Autowired
	private SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public List<NoticeDTO> getListAll() {
		System.out.println("ss : " + ss);
		return ss.selectList("kr.co.vida.board.selectAll");
	}

	public List<NoticeDTO> getListAll(int startNo, int endNo) {
		StartEnd se = new StartEnd(startNo, endNo);
		System.out.println("ss : " + ss);
		return ss.selectList("kr.co.vida.board.selectAll", se);
	}

	@Override
	public NoticeDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.board.selectOne", no);
	}

	@Override
	public void addOne(NoticeDTO dto) {
		ss.insert("kr.co.vida.board.insertOne", dto);
		
	}

	@Override
	public void modifyOne(NoticeDTO dto) {
		ss.update("kr.co.vida.board.updateOne" , dto);
		
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("kr.co.vida.board.deleteOne" , no);
		
	}

	public int getTotal() {
		return ss.selectOne("kr.co.vida.board.getTotal");
	}

	public void raiseHits(int no) {
		ss.update("kr.co.vida.board.raiseHits", no);
	}


}
