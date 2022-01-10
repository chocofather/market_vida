package kr.co.vida.dao;

import java.util.List;

import kr.co.vida.dto.CrewPointsDTO;

public interface Dao<T> {
	public List<T> getListAll();
	public T getOne(int no);
	public void addOne(T dto);
	public void modifyOne(T dto);
	public void deleteOne(int no);
	public List<CrewPointsDTO> getListAll(int no);
	

	

}
