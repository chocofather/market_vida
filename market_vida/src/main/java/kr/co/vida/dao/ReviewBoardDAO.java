package kr.co.vida.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CrewStartEnd;
import kr.co.vida.dto.ReviewBoardDTO;

@Repository
public class ReviewBoardDAO implements Dao<ReviewBoardDTO> {

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<ReviewBoardDTO> getListAll() {
		return null;
	}

	@Override
	public ReviewBoardDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.reviewBoard.selectReviewOne" , no);
	}

	@Override
	public void addOne(ReviewBoardDTO dto) {
		ss.insert("kr.co.vida.reviewBoard.insertOne" , dto);
	}

	@Override
	public void modifyOne(ReviewBoardDTO dto) {
		ss.update("kr.co.vida.reviewBoard.updateOne" , dto);
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("kr.co.vida.reviewBoard.deleteOne" , no);
	}
	
	public List<ReviewBoardDTO> getListAll(int no , int startNo , int endNo) {
		
		CrewStartEnd cse = new CrewStartEnd(no, startNo, endNo);
		return ss.selectList("kr.co.vida.reviewBoard.selectReviewAll" , cse);
	}
	
	public int getTotal() {
		return ss.selectOne("kr.co.vida.reviewBoard.getTotal");
	}
	
	public ReviewBoardDTO reviewOne(int no) {
		return ss.selectOne("kr.co.vida.reviewBoard.selectReview", no);
	}

}
