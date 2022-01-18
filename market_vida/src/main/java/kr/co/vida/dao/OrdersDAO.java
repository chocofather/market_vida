package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CouponBoxDTO;
import kr.co.vida.dto.CrewStartEnd;
import kr.co.vida.dto.GoodsList;
import kr.co.vida.dto.OrdersDTO;

@Repository
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
		return ss.selectOne("kr.co.vida.orders.selectOrderOne" , no);
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
	
	public List<OrdersDTO> getListAll(int no) {
		return ss.selectList("kr.co.vida.orders.selectOrderAll" , no);
	}
	
	public OrdersDTO getDetail(int crew_no , int goods_no , int order_no) {
		
		GoodsList list = new GoodsList(crew_no, goods_no, order_no);
		
		return ss.selectOne("kr.co.vida.orders.selectOrderDetail", list);
		
	}

}
