package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CouponBoxDTO;

@Repository
public class CouponBoxDAO implements Dao<CouponBoxDTO>{

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<CouponBoxDTO> getListAll() {
		return ss.selectList("kr.co.vida.couponbox.selectBoxAll");
	}

	@Override
	public CouponBoxDTO getOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addOne(CouponBoxDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(CouponBoxDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
