package kr.co.vida.dao;

import java.util.List;


import kr.co.vida.dto.ImgDTO;

public interface Dao<T> {
	public List<CouponDTO> getCouponList();
	public CouponDTO getCouponOne(int no);
	public void addCouponOne(CouponDTO cdto);
	public void deleteCoupon(int no);
	
	public List<CouponBoxDTO> getCouponBoxList();
	public CouponBoxDTO getCouponBoxOne(int no);
	public void addCouponBoxOne(CouponBoxDTO cbdto);
	public void modifyCouponBox(CouponBoxDTO cbdto);
  
	public List<ImgDTO> getImgAll();
	public ImgDTO getImgOne(int imgNo);
	public void updateImg(ImgDTO imgDto);
	public void modifyImg(ImgDTO imgDto);
	public void delete(int imgNo);
	

}
