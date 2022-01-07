package kr.co.vida.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vida.dto.CrewDTO;

@Repository
public class CrewDAO implements CRDao{

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public String loginCheck(CrewDTO crdto){
			
		return ss.selectOne("kr.co.vida.mapper.CrewMapper.logincheck",crdto);
	}

	@Override
	public void insertcrew(CrewDTO dto) {
		// TODO Auto-generated method stub
		
	}

	

	

}
