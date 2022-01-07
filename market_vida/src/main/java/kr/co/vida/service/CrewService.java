package kr.co.vida.service;

import javax.servlet.http.HttpSession;

import kr.co.vida.dto.CrewDTO;

public interface CrewService {
	public static String loginCheck(CrewDTO crdto, HttpSession session){
		// TODO Auto-generated method stub
		return null;
	}
	public int idCheck(CrewDTO crdto, HttpSession session);
	public void logout(HttpSession session);
}
