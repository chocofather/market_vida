package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.CouponDTO;
import kr.co.vida.dto.CrewPointsDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("CouponService")
public class CouponImple implements VidaService<CouponDTO> {
	
	@Autowired
	Dao<CouponDTO> dao;

	public void setDao(Dao<CouponDTO> dao) {
		this.dao = dao;
	}

	@Override
	public List<CouponDTO> selectAllList() {
		return dao.getListAll();
	}

	@Override
	public CouponDTO selectOne(int no) {
		return dao.getOne(no);
	}

	@Override
	public void insertOne(CouponDTO dto) {
		dao.addOne(dto);
	}

	@Override
	public void updateOne(CouponDTO dto) {
		dao.modifyOne(dto);
	}

	@Override
	public void dropOne(int no) {
		dao.deleteOne(no);
	}

	@Override
	public List<CrewPointsDTO> selectAllList(int no) {
		// TODO Auto-generated method stub
		return null;
	}

}
