package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CouponDTO;
import kr.co.vida.dto.ImgDTO;

@Repository
public class CouponDAO implements Dao<CouponDTO> {
	
	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CouponDTO> selectAll(int startNo, int endNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void InsertOne(CouponDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public CouponDTO selectOne(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateOne(CouponDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void raiseHits(int bno) {
		// TODO Auto-generated method stub
		
	}




}
