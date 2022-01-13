package kr.co.vida.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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
	public int loginCheck(CrewDTO crdto) {
		return ss.selectOne("kr.co.vida.mappers.crewMapper.logincheck", crdto);
	}

	@Override
	public void register(CrewDTO crdto) {
		
		ss.insert("kr.co.vida.mappers.crewMapper.insertcrew",crdto);
	}
	

}
