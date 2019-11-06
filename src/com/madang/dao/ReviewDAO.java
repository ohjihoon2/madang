package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.ConcertVO;
import com.madang.vo.ReviewReplyVO;
import com.madang.vo.ReviewVO;

public class ReviewDAO {
	//field
    String url="jdbc:oracle:thin:@211.63.89.214:1521";
    String user="madang";
    String pass="1234";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ReviewDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e) {e.printStackTrace();}				
	}
	
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
			
		}catch(Exception e) {e.printStackTrace();}
	}
	
	
	/** ���� ����Ʈ ��� **/
	public ArrayList<ReviewVO> getResultListByDate(String listOrder){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "";
		if(listOrder.equals("byDate")) {
			sql = "select to_char(rv_date,'yyyy.mm.dd.'), r.id, rv_staravg, rv_title, rv_content, rv_hits, c_poster, rv_code" + 
					" from review r, concert c" + 
					" where r.concert_code = c.concert_code" + 
					" order by rv_date desc";
		}else if(listOrder.equals("byStar")){
			sql = "select to_char(rv_date,'yyyy.mm.dd.'), r.id, rv_staravg, rv_title, rv_content, rv_hits, c_poster, rv_code" + 
					" from review r, concert c" + 
					" where r.concert_code = c.concert_code" + 
					" order by rv_staravg desc";
		}
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setRv_date(rs.getString(1));				
				vo.setId(rs.getString(2));
				vo.setRv_staravg(rs.getInt(3));
				vo.setRv_title(rs.getString(4));
				vo.setRv_content(rs.getString(5));
				vo.setRv_hits(rs.getInt(6));
				vo.setC_poster(rs.getString(7));
				vo.setRv_code(rs.getString(8));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/** ���� ����Ʈ ��� **/
	public ArrayList<ReviewVO> getResultListByDate(){
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = "select to_char(rv_date,'yyyy.mm.dd.'), r.id, rv_staravg, rv_title, rv_content, rv_hits, c_poster, rv_code" + 
					" from review r, concert c" + 
					" where r.concert_code = c.concert_code" + 
					" order by rv_date desc";
		getPreparedStatement(sql);
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setRv_date(rs.getString(1));				
				vo.setId(rs.getString(2));
				vo.setRv_staravg(rs.getInt(3));
				vo.setRv_title(rs.getString(4));
				vo.setRv_content(rs.getString(5));
				vo.setRv_hits(rs.getInt(6));
				vo.setC_poster(rs.getString(7));
				vo.setRv_code(rs.getString(8));			
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/** ���� Ÿ��Ʋ �ҷ����� **/
	public ArrayList<ConcertVO> getConcertList(){
		ArrayList<ConcertVO> clist = new ArrayList<ConcertVO>();
		String sql="select c_title, concert_code from concert";
		getPreparedStatement(sql);
		
		try {
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ConcertVO cvo = new ConcertVO();
				cvo.setC_title(rs.getString(1));
				cvo.setConcert_code(rs.getString(2));
				
				clist.add(cvo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return clist;
	}
	
	/** �ı� �۾��� **/
	public boolean getResultWrite(ReviewVO vo) {
		
		boolean result = false;
		String sql = "insert into review values('rv'|| lpad(sequ_review.nextval, 4,'0'),?,?,?,sysdate,58,?,?)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getRv_title());
			pstmt.setString(2, vo.getRv_content());
			pstmt.setString(3, vo.getConcert_code());
			pstmt.setString(4, vo.getId());
			pstmt.setInt(5, vo.getRv_staravg());
			
			int val = pstmt.executeUpdate();
			if(val !=0 ) result = true;		
	
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
	 
	/** ���䳻�� �ҷ����� **/
	public ReviewVO getResultContent(String rv_code) {
		
		ReviewVO vo = new ReviewVO();
		String sql = "select rv_title, rv_content, c_title, r1.rv_code, r1.id, to_char(rv_rp_date,'yyyy.mm.dd.'), rv_rp_id\r\n" + 
					" from (select rv_title, rv_content, c_title, rv_code, r.id\r\n" + 
						" from review r, concert c\r\n" + 
						" where r.concert_code = c.concert_code) r1, review_reply r2 \r\n" + 
					" where r1.rv_code = r2.rv_code(+)\r\n" + 
					" and r1.rv_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rv_code);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setRv_title(rs.getString(1));
				vo.setRv_content(rs.getString(2));
				vo.setC_title(rs.getString(3));
				vo.setRv_code(rs.getString(4));
				vo.setId(rs.getString(5));				
				vo.setRv_rp_date(rs.getString(6));				
				vo.setRv_rp_id(rs.getString(7));				
			}		
			
		}catch(Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
/*	*//** ���䳻�� �ҷ����� **//*
	public ReviewVO getResultContent(String rv_code) {
		ReviewVO vo = new ReviewVO();
		String sql = "select rv_title, rv_content, c_title, r.id" + 
				" from review r, concert c" + 
				" where r.concert_code = c.concert_code" + 
				" and rv_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rv_code);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setRv_title(rs.getString(1));
				vo.setRv_content(rs.getString(2));
				vo.setC_title(rs.getString(3));
				vo.setId(rs.getString(4));
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}*/
	
	/** ��ȸ�� ������Ʈ **/
	public void getResultUpdateHits(String rv_code) {

		String sql = "update review set rv_hits= rv_hits+1 where rv_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rv_code);
			pstmt.executeUpdate();			
			
		}catch(Exception e) {e.printStackTrace();}

	}
	
	/** ���� ������Ʈ **/
	public boolean getResultReviewUpdate(ReviewVO vo) {
		boolean result = false;
		String sql = "update review set rv_title=?, rv_content=?, rv_staravg=? where rv_code=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getRv_title());
			pstmt.setString(2, vo.getRv_content());
			pstmt.setInt(3, vo.getRv_staravg());
			pstmt.setString(4, vo.getRv_code());

			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		}catch(Exception e) { e.printStackTrace();}
		
		return result;
	}
	
	/** ���� ��� ����Ʈ **/
	public ArrayList<ReviewReplyVO> getReplyList(String rv_code){
		ArrayList<ReviewReplyVO> list = new ArrayList<ReviewReplyVO>();
		String sql = "select rv_rp_code, rv_rp_content, rv_code, rv_rp_id, to_char(rv_rp_date,'yyyy.mm.dd.') from review_reply where rv_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rv_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewReplyVO vo = new ReviewReplyVO();
				vo.setRv_rp_code(rs.getString(1));				
				vo.setRv_rp_content(rs.getString(2));
				vo.setRv_code(rs.getString(3));
				vo.setRv_rp_id(rs.getString(4));
				vo.setRv_rp_date(rs.getString(5));
				
				list.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/** ���� ��� �۾��� **/
	public boolean getResultReplyWrite(ReviewReplyVO vo) {
		
		boolean result = false;
		String sql = "insert into review_reply values('rvrp'|| lpad(sequ_review_reply.nextval, 4,'0'),?,?,?,sysdate)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getRv_rp_content());
			pstmt.setString(2, vo.getRv_code());
			pstmt.setString(3, vo.getRv_rp_id());
			
			int val = pstmt.executeUpdate();
			if(val !=0 ) result = true;
			
	
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	/** ���� ���� **/
	public boolean getResultDelete(String rv_code) {
		boolean result = false;
		String sql = "delete review where rv_code=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, rv_code);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	/** ���� ��� ���� **/
	public boolean getResultReplyDelete(String rv_rp_code) {
		boolean result = false;
		String sql = "delete review_reply where rv_rp_code=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, rv_rp_code);
System.out.println("rv_rp_code:"+rv_rp_code);			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
System.out.println("result:"+result);				
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	/** ���� **/
	public void close() {
		
		try {				
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
}
