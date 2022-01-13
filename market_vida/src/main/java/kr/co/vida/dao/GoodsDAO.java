package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.GoodsDTO;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class GoodsDAO implements Dao<GoodsDTO> {
	
	@Autowired
	private SqlSession ss;

	@Override
	public List<GoodsDTO> getListAll() {
		return null;
	}

	@Override
	public GoodsDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.goods.getOne", no);
	}

	@Override
	public void addOne(GoodsDTO dto) {
		ss.insert("kr.co.vida.insertOne", dto);
		
	}

	@Override
	public void modifyOne(GoodsDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}


}
