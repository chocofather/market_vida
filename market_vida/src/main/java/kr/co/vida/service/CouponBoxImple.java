package kr.co.vida.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CouponDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("CouponBoxService")
public class CouponBoxImple implements VidaService {

	Dao<CouponBoxDTO> dao;

	public void setDao(Dao<CouponBoxDTO> dao) {
		this.dao = dao;
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
