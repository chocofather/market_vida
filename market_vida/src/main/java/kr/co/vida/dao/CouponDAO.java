package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CouponDTO;

@Repository
public class CouponDAO implements Dao<CouponDTO> {
	
	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<CouponDTO> getCouponList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CouponDTO getCouponOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addCouponOne(CouponDTO cdto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCoupon(int no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CouponBoxDTO> getCouponBoxList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CouponBoxDTO getCouponBoxOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addCouponBoxOne(CouponBoxDTO cbdto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyCouponBox(CouponBoxDTO cbdto) {
		// TODO Auto-generated method stub
		
	}

}
