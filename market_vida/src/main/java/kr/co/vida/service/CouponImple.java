package kr.co.vida.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CouponDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("CouponService")
public class CouponImple implements VidaService {

	Dao<CouponDTO> dao;

	public void setDao(Dao<CouponDTO> dao) {
		this.dao = dao;
	}

	@Override
	public List selectAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(Object dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(Object dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}

	

}
