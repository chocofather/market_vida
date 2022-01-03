package kr.co.vida.service;

import java.util.List;

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CouponDTO;

public interface VidaService {
	public List<CouponDTO> getCouponList();
	public CouponDTO getCouponOne(int no);
	public void addCouponOne(CouponDTO cdto);
	public void deleteCoupon(int no);
	
	public List<CouponBoxDTO> getCouponBoxList();
	public CouponBoxDTO getCouponBoxOne(int no);
	public void addCouponBoxOne(CouponBoxDTO cbdto);
	public void modifyCouponBox(CouponBoxDTO cbdto);
}
