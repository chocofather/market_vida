package kr.co.vida.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.ImgDTO;
import kr.co.vida.dto.LikeDTO;

@Repository
public class LikeDAO{
	
	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	public void insertOne(LikeDTO dto) {
		ss.insert("kr.co.vida.like.insertOne", dto);
	}
	
	public List<LikeDTO> getListById(int crew_no) {
		return ss.selectList("kr.co.vida.like.getListById", crew_no);
	}

	public void delete(String no) {
		ss.delete("kr.co.vida.like.delete", no);
	}

	public int likeCheck(int crew_no, int goods_no) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("crew_no", crew_no);
		map.put("goods_no", goods_no);
		return ss.selectOne("kr.co.vida.like.likeCheck", map);
	}
	
	
//	public LikeDTO likeCheck(LikeDTO dto) {
//		ss.likeCheck("kr.co.vida.like.likeCheck");
//	}
	
}	