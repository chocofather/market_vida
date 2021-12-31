package kr.co.vida.dao;

import java.util.List;

import kr.co.vida.dto.CartDTO;

public interface CartDAO {
	public int getNewCartNumber(); // 카트 번호
	public CartDTO checkCart(); // 카트 체크
	public void insertGoodsInCart(); // 카트에 상품 담기
	public void updateGoodsInCart(); // 카트에 수량 추가
	public List getCartList(int crew_no);	
}
