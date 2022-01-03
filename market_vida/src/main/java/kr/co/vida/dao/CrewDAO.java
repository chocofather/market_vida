package kr.co.vida.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.vida.dto.CrewDTO;

public class CrewDAO implements CDao{

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "mydb.cax7alvdqjnf.ap-northeast-2.rds.amazonaws.com:1521:orcl";
	String user = "scott";
	String password = "tigertiger1";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sb = new StringBuffer();
	
	public CrewDAO() {
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println("db 연결 실패");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버로딩 실패");
			e.printStackTrace();
		}
	}
	
	@Override
	public boolean isExists(String id, String pwd) {
		sb.setLength(0);
		sb.append("SELECT * ");
		sb.append("FROM CREW ");
		sb.append("WHERE CREW_ID = ? and CREW_pw = ? ");
		
		boolean result = false;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rs = pstmt.executeQuery();
			result = rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

	@Override
	public boolean insertOne(CrewDTO dto) {
		sb.setLength(0);
		sb.append("INSERT INTO CREW ");
		sb.append("VALUES (CREW_NO_SEQ.nextval, ?, ? ,? ,? ,? ,? ,?, ?, ? ) ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			// pstmt.setString(1, dto.getCrew_Id());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
