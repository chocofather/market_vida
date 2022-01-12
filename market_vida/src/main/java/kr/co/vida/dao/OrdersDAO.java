package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.vida.dto.OrdersDTO;

public class OrdersDAO implements Dao<OrdersDTO> {

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<OrdersDTO> getListAll() {
		return ss.selectList("kr.co.vida.orders.selectOrderAll");
	}

	@Override
	public OrdersDTO getOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addOne(OrdersDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifyOne(OrdersDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub

	}

}
