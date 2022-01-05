package kr.co.vida.service;

import javax.servlet.http.HttpSession;

import kr.co.vida.dto.CrewDTO;

public interface CrewService {
	public String loginCheck(CrewDTO crdto, HttpSession session);
	public void logout(HttpSession session);
}
