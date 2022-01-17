package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.FriendsBenefitDAO;
import kr.co.vida.dto.FriendsBenefitDTO;

@Service
public class FriendsBenefitImple implements VidaService<FriendsBenefitDTO>{

	@Autowired
	FriendsBenefitDAO dao;

	public void setDao(FriendsBenefitDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<FriendsBenefitDTO> selectAllList() {
		return dao.getListAll();
	}
	
	public List<FriendsBenefitDTO> getListGrade() {
		return dao.getListGrade();
	}

	@Override
	public FriendsBenefitDTO selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public FriendsBenefitDTO selectOne(String grade) {
		return dao.getOne(grade);
	}
	
	@Override
	public void insertOne(FriendsBenefitDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(FriendsBenefitDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}

}
