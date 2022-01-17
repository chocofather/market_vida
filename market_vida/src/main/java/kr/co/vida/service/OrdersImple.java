package kr.co.vida.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.vida.dao.Dao;
import kr.co.vida.dao.OrdersDAO;
import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.OrdersDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("OrdersImple")
public class OrdersImple implements VidaService<OrdersDTO>{
	
	@Autowired
	OrdersDAO dao;

	@Override
	public List<OrdersDTO> selectAllList() {
		return dao.getListAll();
	}

	@Override
	public OrdersDTO selectOne(int no) {
		return dao.getOne(no);
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
	
	public List<OrdersDTO> selectAllList(int no) {
		return dao.getListAll(no);
	}

	public OrdersDTO selectAllList(int crew_no , int goods_no , int order_no ) {
		return dao.getDetail(crew_no, goods_no, order_no);
	}
	
}
