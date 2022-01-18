package kr.co.vida.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kr.co.vida.dto.CrewDTO;

public interface LoginService {
	public int loginCheck(CrewDTO crdto, HttpSession session);
	public void logout(HttpSession session);
	public String findid(CrewDTO crdto, HttpSession session);
	public String findname(String crew_id );
	public CrewDTO selectAll_id(String crew_id);
}
