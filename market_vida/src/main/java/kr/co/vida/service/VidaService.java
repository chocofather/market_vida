package kr.co.vida.service;

import java.util.List;

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CouponDTO;

public interface VidaService<T> {
	public List<T> selectAllList();
	public T selectOne(int no);
	public void insertOne(T dto);
	public void updateOne(T dto);
	public void dropOne(int no);
	
}
