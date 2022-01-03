package kr.co.vida.dao;

import java.util.List;

import kr.co.vida.dto.ImgDTO;

public interface Dao {
	public List<ImgDTO> getImgAll();
	public ImgDTO getImgOne(int imgNo);
	public void updateImg(ImgDTO imgDto);
	public void modifyImg(ImgDTO imgDto);
	public void delete(int imgNo);
	
}
