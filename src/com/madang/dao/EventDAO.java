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
	    String url="jdbc:oracle:thin:@211.63.89.214:1521";
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
	
	//add eventContent hits
	public void getResultUpdateHits(String ev_code) {
		String sql = "update event set ev_hits= ev_hits+1 where ev_code=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, ev_code);
			pstmt.executeUpdate();
			
		}catch(Exception e) {e.printStackTrace();}
		
	}
	
	
	/** 占쎈쐻占쎈뼓�뇡�빘�굲占쎈뱜 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈뱜 占쎈쐻占쎈짗占쎌굲筌ｏ옙 占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� **/
	public ArrayList<EventVO> getResultList(){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		String sql = "select ev_code, ev_title, ev_sthumbnail, ev_sdetail, to_char(ev_date,'yyyy.mm.dd.'), to_char(ev_sdate,'yyyy.mm.dd.'), to_char(ev_edate,'yyyy.mm.dd.'), ev_hits"
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
				vo.setEv_hits(rs.getInt(8));

				list.add(vo);
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	
	
	/** **/
	public ArrayList<EventVO> getResultIngList(){
		
		ArrayList<EventVO> elist = new ArrayList<EventVO>();
		String sql = "select ev_code, ev_title, ev_sthumbnail,ev_sdetail, to_char(ev_date,'yyyy.mm.dd.'),to_char(ev_sdate,'yyyy.mm.dd.'),to_char(ev_edate,'yyyy.mm.dd.'), ev_hits"
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
				vo.setEv_hits(rs.getInt(8));

				elist.add(vo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return elist;
	}
	
	/** Contents VO占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� **/
	public EventVO getResultVO(String ev_code) {
		EventVO vo = new EventVO();
		String sql = "select ev_code, ev_title, ev_sthumbnail, ev_sdetail, ev_date, ev_sdate, ev_edate, ev_hits from event where ev_code=?";
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
				vo.setEv_hits(rs.getInt(8));
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	/**  占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈뱜 占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占�  **/
	public ArrayList<EventReplyVO> getResultReplyList(String ev_code){
		
		ArrayList<EventReplyVO> rlist = new ArrayList<EventReplyVO>();
		String sql = "select ev_rp_id, ev_rp_content, ev_rp_date from event_reply"
				+ " where ev_code=?"
				+ " order by ev_rp_date desc";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, ev_code);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventReplyVO rvo = new EventReplyVO();
				
				rvo.setEv_rp_id(rs.getString(1));
				rvo.setEv_rp_content(rs.getString(2));
				rvo.setEv_rp_date(rs.getString(3));				

				rlist.add(rvo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return rlist;
	}

	/** 占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� 占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占� **/
	public int getResultReplyWrite(EventReplyVO rvo) {
		int result = 0;
		String sql = "insert into event_reply values('evrp'|| lpad(sequ_event_reply.nextval, 4,'0'),?,?,?, sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rvo.getEv_rp_content());
			pstmt.setString(2, rvo.getEv_code());
			pstmt.setString(3, rvo.getEv_rp_id());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = 1;

		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}

//�꽴占썹뵳�딆쁽 占쎌뵠甕겹끋�뱜 筌뤴뫖以� 揶쏉옙占쎌죬占쎌궎疫뀐옙
	public ArrayList<EventVO> getResultListAdmin(){
		ArrayList<EventVO> list = new ArrayList<EventVO>();
		String sql = "select ev_code, ev_title, to_char(ev_sdate,'yyyy.mm.dd'),to_char(ev_edate,'yyyy.mm.dd'), to_char(ev_date,'yyyy.mm.dd'), ev_hits, floor(sysdate-to_date(ev_sdate,'yy/mm/dd')) startcount,floor(to_date(ev_edate,'yy/mm/dd')-sysdate)+1 endcount from event order by ev_date desc";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				EventVO vo = new EventVO();
				
				vo.setEv_code(rs.getString(1));
				vo.setEv_title(rs.getString(2));
				vo.setEv_sdate(rs.getString(3));
				vo.setEv_edate(rs.getString(4));
				vo.setEv_date(rs.getString(5));
				vo.setEv_hits(rs.getInt(6));
				if(rs.getInt(8)>=0) {
					if(rs.getInt(7)<0) {
						vo.setEv_status("예정");
						
					}else {
						vo.setEv_status("진행중");
					}
				}else {
					vo.setEv_status("종료");
				}
				
				list.add(vo);
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	//�꽴占썹뵳�딆쁽 -占쎌뵠甕겹끋�뱜 占쎄땀占쎌뒠 癰귣떯由�
	public EventVO getResultContentAdmin(String ev_code) {
		EventVO vo = new EventVO();
		String sql = "select ev_code, ev_title, ev_sthumbnail, ev_sdetail,to_char(ev_date,'yyyy-mm-dd'),to_char(ev_sdate,'yyyy-mm-dd'), to_char(ev_edate,'yyyy-mm-dd'), ev_hits, floor(sysdate-to_date(ev_sdate,'yy/mm/dd')) startcount,floor(to_date(ev_edate,'yy/mm/dd')-sysdate)+1 endcount from event where ev_code=?";
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
				vo.setEv_hits(rs.getInt(8));
				if(rs.getInt(10)>=0) {
					if(rs.getInt(9)<0) {
						vo.setEv_status("예정");
					}else {
						vo.setEv_status("진행중");
					}
				}else {
					vo.setEv_status("종료");
				}
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	//�꽴占썹뵳�딆쁽-占쎌뵠甕겹끋�뱜 占쎈쾻嚥∽옙
	public boolean getResultWriteAdmin(EventVO vo) {
		boolean result = false;
		String sql = "insert into event values('ev'|| lpad(sequ_event.nextval, 4,'0'),?,?,?,?,?,sysdate,?,?,0)";
		getPreparedStatement(sql);
		try {
			
			pstmt.setString(1, vo.getEv_title());
			pstmt.setString(2, vo.getEv_thumbnail());
			pstmt.setString(3, vo.getEv_sthumbnail());
			pstmt.setString(4, vo.getEv_detail());
			pstmt.setString(5, vo.getEv_sdetail());
			pstmt.setString(6, vo.getEv_sdate());
			pstmt.setString(7, vo.getEv_edate());
			
			int val = pstmt.executeUpdate();
			if(val != 0) {
				result = true;
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	//�꽴占썹뵳�딆쁽-占쎌뵠甕겹끋�뱜 占쎈씜占쎈쑓占쎌뵠占쎈뱜
		public boolean getResultUpdateAdmin(EventVO vo) {
			System.out.println(vo.getEv_code());
			boolean result = false;
			String sql = "update event set ev_title=?, ev_thumbnail=?, ev_sthumbnail=?,ev_detail=?,ev_sdetail=?,ev_sdate=?,ev_edate=? where ev_code=?";
			getPreparedStatement(sql);
			try {
				
				pstmt.setString(1, vo.getEv_title());
				pstmt.setString(2, vo.getEv_thumbnail());
				pstmt.setString(3, vo.getEv_sthumbnail());
				pstmt.setString(4, vo.getEv_detail());
				pstmt.setString(5, vo.getEv_sdetail());
				pstmt.setString(6, vo.getEv_sdate());
				pstmt.setString(7, vo.getEv_edate());
				pstmt.setString(8, vo.getEv_code());
				
				int val = pstmt.executeUpdate();
				if(val != 0) {
					result = true;
				}
			}catch(Exception e) {e.printStackTrace();}
			
			return result;
		}
		
	//admin delete
		public boolean getResultDeleteAdmin(String ev_code) {
			boolean result=false;
			String sql="delete event where ev_code=?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, ev_code);
				
				int val = pstmt.executeUpdate();
				if(val != 0) {
					result = true;
				}
			}catch(Exception e) {e.printStackTrace();}
			return result;
		}
		
	
		
		
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
}
