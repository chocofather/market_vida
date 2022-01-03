package kr.co.vida.dao;

import java.util.List;

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CouponDTO;

public interface Dao<T> {

	public List<T> selectAll(int startNo, int endNo);
	public void InsertOne(T dto);
	public T selectOne(int bno);
	public void updateOne(T dto);
	public void deleteOne(int bno);
	public int getTotal();
	public void raiseHits(int bno);
	
}

