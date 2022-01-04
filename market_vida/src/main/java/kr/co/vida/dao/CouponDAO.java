package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CouponDTO;

@Repository
public class CouponDAO implements Dao<CouponDTO> {
	
	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<CouponDTO> getListAll() {
		return ss.selectList("kr.co.vida.coupon.selectAll");
	}

	@Override
	public CouponDTO getOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addOne(CouponDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(CouponDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}




}
