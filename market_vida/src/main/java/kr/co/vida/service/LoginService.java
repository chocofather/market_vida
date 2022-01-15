package kr.co.vida.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.vida.dto.CrewDTO;

public interface LoginService {
	public int loginCheck(CrewDTO crdto, HttpSession session);
	public void logout(HttpSession session);
	public void register(CrewDTO crdto);
}
