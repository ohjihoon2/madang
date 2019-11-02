package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.madang.vo.EventReplyVO;
import com.madang.vo.EventVO;

public class EventDAO {
	//field
	    String url="jdbc:oracle:thin:@localhost:1521";
	    String user="madang";
	    String pass="1234";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
	public EventDAO() {
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
	
	/** �̺�Ʈ ����Ʈ ��ü ��� **/
	public ArrayList<EventVO> getResultList(){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		String sql = "select ev_code, ev_title, ev_sthumbnail, ev_sdetail, to_char(ev_date,'yyyy.mm.dd.'), to_char(ev_sdate,'yyyy.mm.dd.'), to_char(ev_edate,'yyyy.mm.dd.'), ev_status, ev_hits"
				+ " from event order by ev_date";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventVO vo = new EventVO();
				
				vo.setEv_code(rs.getString(1));
				vo.setEv_title(rs.getString(2));
				vo.setEv_sthumbnail(rs.getString(3));
				vo.setEv_sdetail(rs.getString(4));
				vo.setEv_date(rs.getString(5));
				vo.setEv_sdate(rs.getString(6));
				vo.setEv_edate(rs.getString(7));
				vo.setEv_status(rs.getString(8));
				vo.setEv_hits(rs.getInt(9));

				list.add(vo);
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	/**  ���� �������� �̺�Ʈ ����Ʈ ��� **/
	public ArrayList<EventVO> getResultIngList(){
		
		ArrayList<EventVO> elist = new ArrayList<EventVO>();
		String sql = "select ev_code, ev_title, ev_sthumbnail,ev_sdetail, to_char(ev_date,'yyyy.mm.dd.'),to_char(ev_sdate,'yyyy.mm.dd.'),to_char(ev_edate,'yyyy.mm.dd.'), ev_status, ev_hits"
				+ " from event"
				+ " where ev_edate>sysdate"
				+ " order by ev_date desc";
		
		
		
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventVO vo = new EventVO();
				
				vo.setEv_code(rs.getString(1));
				vo.setEv_title(rs.getString(2));
				vo.setEv_sthumbnail(rs.getString(3));
				vo.setEv_sdetail(rs.getString(4));
				vo.setEv_date(rs.getString(5));
				vo.setEv_sdate(rs.getString(6));
				vo.setEv_edate(rs.getString(7));
				vo.setEv_status(rs.getString(8));
				vo.setEv_hits(rs.getInt(9));

				elist.add(vo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return elist;
	}
	
	/** Contents VO��� **/
	public EventVO getResultVO(String ev_code) {
		EventVO vo = new EventVO();
		String sql = "select ev_code, ev_title, ev_sthumbnail, ev_sdetail, ev_date, ev_sdate, ev_edate, ev_status, ev_hits from event where ev_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, ev_code);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setEv_code(rs.getString(1));
				vo.setEv_title(rs.getString(2));
				vo.setEv_sthumbnail(rs.getString(3));
				vo.setEv_sdetail(rs.getString(4));
				vo.setEv_date(rs.getString(5));
				vo.setEv_sdate(rs.getString(6));
				vo.setEv_edate(rs.getString(7));
				vo.setEv_status(rs.getString(8));
				vo.setEv_hits(rs.getInt(9));
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	/**  ��� ����Ʈ ���  **/
	public ArrayList<EventReplyVO> getResultReplyList(String ev_code){
		
		ArrayList<EventReplyVO> rlist = new ArrayList<EventReplyVO>();
		String sql = "select id, ev_rp_content, ev_rp_date from event_reply"
				+ " where ev_code=?"
				+ " order by ev_rp_date desc";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, ev_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventReplyVO rvo = new EventReplyVO();
				
				rvo.setId(rs.getString(1));
				rvo.setEv_rp_content(rs.getString(2));
				rvo.setEv_rp_date(rs.getString(3));				

				rlist.add(rvo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return rlist;
	}

	/** ��� ��� **/
	public int getResultReplyWrite(EventReplyVO rvo) {
		int result = 0;
		String sql = "insert into event_reply values('ev_rp_'|| lpad(sequ_event_reply.nextval, 4,'0'),?,?,?, sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rvo.getEv_rp_content());
			pstmt.setString(2, rvo.getEv_code());
			pstmt.setString(3, rvo.getId());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = 1;
System.out.println("result:"+result);
System.out.println("rcontent:"+rvo.getEv_rp_content());
System.out.println("evcode:"+rvo.getEv_code());
System.out.println("id:"+rvo.getId());
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}

}
