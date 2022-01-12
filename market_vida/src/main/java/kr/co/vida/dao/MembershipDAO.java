package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.vida.dto.MembershipDTO;

public class MembershipDAO implements Dao<MembershipDTO>{
	@Autowired
	SqlSession ss;
	
	@Override
	public List<MembershipDTO> getListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MembershipDTO getOne(int no) {
		return ss.selectOne("kr.co.vida.getOne", ss);
	}

	@Override
	public void addOne(MembershipDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyOne(MembershipDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
