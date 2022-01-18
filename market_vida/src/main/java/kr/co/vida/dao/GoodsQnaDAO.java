package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.GoodsQnaDTO;

@Repository
public class GoodsQnaDAO implements Dao<GoodsQnaDTO> {
	
	@Autowired
	SqlSession ss;

	@Override
	public List<GoodsQnaDTO> getListAll() {
		return ss.selectList("kr.co.vida.goodsQna.getAll");
	}

	@Override
	public GoodsQnaDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.goodsQna.getOne", no);
	}

	@Override
	public void addOne(GoodsQnaDTO dto) {
		ss.update("kr.co.vida.goodsQna.insertOne", dto);
	}

	@Override
	public void modifyOne(GoodsQnaDTO dto) {
		ss.update("kr.co.vida.goodsQna.updateOne", dto);
	}

	@Override
	public void deleteOne(int no) {
		ss.delete("kr.co.vida.goodsQna.deleteOne", no);
	}

}
