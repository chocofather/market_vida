package kr.co.vida.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CartDTO;

@Repository
public class CartDAOImpl implements CartDAO {
	
	SqlSession ss;
	
	
	@Override
	public int getNewCartNumber() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public CartDTO checkCart() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertGoodsInCart() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateGoodsInCart() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List getCartList(int crew_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
