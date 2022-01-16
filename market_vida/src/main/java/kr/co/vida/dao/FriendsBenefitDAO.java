package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.FriendsBenefitDTO;

@Repository
public class FriendsBenefitDAO implements Dao<FriendsBenefitDTO>{
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<FriendsBenefitDTO> getListAll() {
		return ss.selectList("kr.co.vida.benefit.selectAll");
	}

	@Override
	public FriendsBenefitDTO getOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public FriendsBenefitDTO getOne(String grade) {
		return ss.selectOne("kr.co.vida.benefit.selectOne", grade);
	}
	
	@Override
	public void addOne(FriendsBenefitDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(FriendsBenefitDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
