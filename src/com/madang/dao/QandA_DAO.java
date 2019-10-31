package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.QandA_VO;

public class QandA_DAO {
	//Field
	String url="jdbc:oracle:thin:@211.63.89.219:1521";
	String user="scott";
	String pass="tiger";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	//Constructor
	public QandA_DAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {e.printStackTrace();}
	}
	
	//Method
	public void getPreparedStatement(String sql) {
		try {
			pstmt=conn.prepareStatement(sql);
		} catch (Exception e) {e.printStackTrace();}
	}
	
	/** 등록 */
	public boolean getResultWrite(QandA_VO vo) {
		boolean result=false;
		
		String sql="insert into q_and_a values(('qa'||lpad(sequ_q_and_a.nextval,4,'0')), ?, ?, sysdate, ?, null, null, null, null)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getQa_title());
			pstmt.setString(3, vo.getQa_contents());
			//pstmt.setString(4, vo.getQa_file());
			//pstmt.setString(5, vo.getQa_sfile());
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	/** 내용 출력 */
	public QandA_VO getContent(String qa_code) {
		QandA_VO vo=new QandA_VO();
		
		String sql="select qa_title, qa_date, qa_contents, qa_file, qa_sfile, qa_acontents, qa_adate from q_and_a where qa_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, qa_code);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				vo.setQa_title(rs.getString(1));
				vo.setQa_date(rs.getString(2));
				vo.setQa_contents(rs.getString(3));
				vo.setQa_file(rs.getString(4));
				vo.setQa_sfile(rs.getString(5));
				vo.setQa_acontents(rs.getString(6));
				vo.setQa_adate(rs.getString(7));
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	/** 전체 리스트 */
	public ArrayList<QandA_VO> getList(String id) {
		ArrayList<QandA_VO> list=new ArrayList<QandA_VO>();
		
		String sql="select rownum, qa_code, qa_title, to_char(qa_date, 'yyyy-mm-dd'), qa_adate " + 
				" from (select qa_code, qa_title, qa_date, qa_adate from q_and_a where id=?)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				QandA_VO vo=new QandA_VO();
				
				vo.setRownum(rs.getInt(1));
				vo.setQa_code(rs.getString(2));
				vo.setQa_title(rs.getString(3));
				vo.setQa_date(rs.getString(4));
				vo.setQa_adate(rs.getString(5));
				
				list.add(vo);
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
}
