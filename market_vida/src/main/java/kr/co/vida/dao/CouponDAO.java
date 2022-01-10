package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CouponDTO;
import kr.co.vida.dto.CrewPointsDTO;

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
		return ss.selectOne("kr.co.vida.coupon.selectOne",no);
	}

	@Override
	public void addOne(CouponDTO dto) {
		ss.insert("kr.co.vida.coupon.insertOne",dto);
	}

	@Override
	public void modifyOne(CouponDTO dto) {
		ss.update("kr.co.vida.coupon.updateOne",dto);
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("kr.co.vida.coupon.deleteOne",no);
	}

	@Override
	public List<CrewPointsDTO> getListAll(int no) {
		// TODO Auto-generated method stub
		return null;
	}




}
