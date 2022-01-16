package kr.co.vida.service;

import java.util.List;

public interface VidaService<T> {
	public List<T> selectAllList();
	public T selectOne(int no);
	public void insertOne(T dto);
	public void updateOne(T dto);
	public void dropOne(int no);
<<<<<<< HEAD
	
=======
>>>>>>> refs/remotes/origin/jongdae
}
