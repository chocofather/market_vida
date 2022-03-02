package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.ImgDTO;
import kr.co.vida.dto.StartEnd;
import kr.co.vida.dto.StartEndGoodsList;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class ImgDAO implements Dao<ImgDTO> {
	
	@Autowired 
	private SqlSession ss;
	
	public List<ImgDTO> readAll(int StartNo, int endNo, int code, String orderBy){
		StartEndGoodsList se = new StartEndGoodsList(StartNo, endNo, code, orderBy);
		return ss.selectList("kr.co.vida.img.readAll", se);
	}

	
	public List<ImgDTO> getAllImgbyGoods(int no){
		return ss.selectList("kr.co.vida.img.getGoodsImgs", no);
	}
	
	public int getTotalbyCode(int no) {
		return ss.selectOne("kr.co.vida.img.getTotalbyCode", no);
	}
	
	@Override
	public List<ImgDTO> getListAll() {
		return null;
	}

	@Override
	public ImgDTO getOne(int no) {
		return null;
	}
	
	public String getMainImage(int no) {
		return ss.selectOne("kr.co.vida.img.getMainImgOne" , no);
	}

	@Override
	public void addOne(ImgDTO dto) {
		ss.insert("kr.co.vida.img.insertImgOne" , dto);
	}

	@Override
	public void modifyOne(ImgDTO dto) {
		
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("kr.co.vida.img.deleteOne", no);
		
	}





}