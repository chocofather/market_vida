package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dto.OrdersDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("OrdersImple")
public class OrdersImple implements VidaService<OrdersDTO>{
	
	@Autowired
	Dao<OrdersDTO> dao;

	public void setDao(Dao<OrdersDTO> dao) {
		this.dao = dao;
	}

	@Override
	public List<OrdersDTO> selectAllList() {
		return dao.getListAll();
	}

	@Override
	public OrdersDTO selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(OrdersDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(OrdersDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void dropOne(int no) {
		// TODO Auto-generated method stub
		
	}
	
	
}
