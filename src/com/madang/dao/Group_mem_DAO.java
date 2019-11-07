package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.Group_mem_VO;
import com.madang.vo.Group_mem_VO;

public class Group_mem_DAO {
	//Field
	String url="jdbc:oracle:thin:@211.63.89.214:1521";
	String user="madang";
	String pass="1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public Group_mem_DAO() {
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
	
	
	/** 회원정보 수정 전 셋팅(전체 출력) */
	public Group_mem_VO getContent(String id) {
		Group_mem_VO vo=new Group_mem_VO();
		
		String sql="select * from group_mem where id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setId(rs.getString(1));
				vo.setPw(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setEmail_id(rs.getString(4));
				vo.setEmail_addr(rs.getString(5));
				vo.setPhone1(rs.getString(6));
				vo.setPhone2(rs.getString(7));
				vo.setPhone3(rs.getString(8));
				vo.setFax1(rs.getString(9));
				vo.setFax2(rs.getString(10));
				vo.setFax3(rs.getString(11));
				vo.setCompany(rs.getString(12));
				vo.setC_name(rs.getString(13));
				vo.setC_number(rs.getString(14));
				vo.setC_phone1(rs.getString(15));
				vo.setC_phone2(rs.getString(16));
				vo.setC_phone3(rs.getString(17));
				vo.setC_post_num(rs.getString(18));
				vo.setC_addr(rs.getString(19));
				vo.setC_addr_d(rs.getString(20));
				vo.setJoindate(rs.getString(21));
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	/** 회원정보 수정 */
	public boolean getResultUpdate(Group_mem_VO vo) {
		boolean result=false;
		
		String sql="update group_mem set pw=?, phone1=?, phone2=?, phone3=?, fax1=?, fax2=?, fax3=?, email_id=?, email_addr=?, \r\n" + 
				"  c_phone1=?, c_phone2=?, c_phone3=?, c_post_num=?, c_addr=?, c_addr_d=? where id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getPw());
			pstmt.setString(2, vo.getPhone1());
			pstmt.setString(3, vo.getPhone2());
			pstmt.setString(4, vo.getPhone3());
			pstmt.setString(5, vo.getFax1());
			pstmt.setString(6, vo.getFax2());
			pstmt.setString(7, vo.getFax3());
			pstmt.setString(8, vo.getEmail_id());
			pstmt.setString(9, vo.getEmail_addr());
			pstmt.setString(10, vo.getC_phone1());
			pstmt.setString(11, vo.getC_phone2());
			pstmt.setString(12, vo.getC_phone3());
			pstmt.setString(13, vo.getC_post_num());
			pstmt.setString(14, vo.getC_addr());
			pstmt.setString(15, vo.getC_addr_d());
			pstmt.setString(16, vo.getId());
			
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	//회원가입 db에 회원정보삽입
	public boolean getResultJoin(Group_mem_VO vo) {
		boolean result=false;
		String sql="insert into group_mem values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail_id());
			pstmt.setString(5, vo.getEmail_addr());
			pstmt.setString(6, vo.getPhone1());
			pstmt.setString(7, vo.getPhone2());
			pstmt.setString(8, vo.getPhone3());
			pstmt.setString(9, vo.getFax1());
			pstmt.setString(10, vo.getFax2());
			pstmt.setString(11, vo.getFax3());
			pstmt.setString(12, vo.getCompany());
			pstmt.setString(13, vo.getC_name());
			pstmt.setString(14, vo.getC_number());
			pstmt.setString(15, vo.getC_phone1());
			pstmt.setString(16, vo.getC_phone2());
			pstmt.setString(17, vo.getC_phone3());
			pstmt.setString(18, vo.getC_post_num());
			pstmt.setString(19, vo.getC_addr());
			pstmt.setString(20, vo.getC_addr_d());
			int val = pstmt.executeUpdate();
			if(val!=0) {
				result=true;
			}
		}catch(Exception e) {e.printStackTrace();}
		return result;
	}
	
	//회원가입시 아이디 중복 체크
	public boolean IsOverlapId(String nid) {
		boolean result=false;
		int val=0;
		String sql="select count(*) from general_mem generalM, group_mem groupM where generalM.id=? or groupM.id=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, nid);
			pstmt.setString(2, nid);
			rs=pstmt.executeQuery();
			if(rs.next()){
				val = rs.getInt(1);
			}
			if(val != 0){
				result = true;
			}		
		}catch(Exception e) {e.printStackTrace();}
		return result;
	}
	
	//로그인 확인
	public boolean getResultLogin(Group_mem_VO vo) {
		boolean result=false;
		int val = 0;
		String sql="select count(*) from group_mem where id=? and pw=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1,vo.getId());
			pstmt.setString(2,vo.getPw());
			rs=pstmt.executeQuery();
			
			if(rs.next()) val=rs.getInt(1);
			if(val!=0) result=true;
		}catch(Exception e) {e.printStackTrace();}
		return result;
	}
	
	
	/** 회원 탈퇴 비밀번호 확인 */
	public int getResultPw(String id, String u_pw) {
		int result=0;
		
		String sql="select count(*) from group_mem where id=? and pw=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, u_pw);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) result=rs.getInt(1);
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	
	/** 회원 탈퇴 */
	public boolean getResultOut(String id, String pw) {
		boolean result=false;
		
		String sql="delete from group_mem where id=? and pw=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	//Admin_list
		public ArrayList<Group_mem_VO> getMembergpListAdmin(int startCount, int endCount){
			ArrayList<Group_mem_VO> list = new ArrayList<Group_mem_VO>();
			String sql="select * from (select rownum rno, id, name, phone1,phone2,phone3,company, to_char(joindate,'yyyy/mm/dd') from(select * from group_mem order by joindate desc))where rno between ? and ?";
			getPreparedStatement(sql);
			
			try {
				pstmt.setInt(1, startCount);
				pstmt.setInt(2, endCount);
				
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Group_mem_VO vo = new Group_mem_VO();
					vo.setRno(rs.getInt(1));
					vo.setId(rs.getString(2));
					vo.setName(rs.getString(3));	
					vo.setPhone1(rs.getString(4));
					vo.setPhone2(rs.getString(5));
					vo.setPhone3(rs.getString(6));
					vo.setCompany(rs.getString(7));
					vo.setJoindate(rs.getString(8));
					
					list.add(vo);
				}
				
			}catch (Exception e) {e.printStackTrace();}
			return list;
		}
		
		//Admin paging
		public int execTotalCount(){
			int result =0;
			try{
				String sql = "select count(*) from group_mem";
				getPreparedStatement(sql);
				
				rs = pstmt.executeQuery();
				if(rs.next()){
					result = rs.getInt(1);
				}
			}catch(Exception e){e.printStackTrace();}
			
			return result;
		}

		
		//Admin_contents
		public Group_mem_VO getMembergpContentsAdmin(String id) {
			Group_mem_VO vo = new Group_mem_VO();
			String sql="select id, name, email_id, email_addr, phone1, phone2, phone3, fax1, fax2, fax3, company, c_name, c_number, "
					+ "c_phone1, c_phone2, c_phone3, c_post_num, c_addr, c_addr_d,to_char(joindate,'yyyy/mm/dd') from group_mem where id=?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					vo.setId(rs.getString(1));
					vo.setName(rs.getString(2));	
					vo.setEmail_id(rs.getString(3));
					vo.setEmail_addr(rs.getString(4));
					vo.setPhone1(rs.getString(5));
					vo.setPhone2(rs.getString(6));
					vo.setPhone3(rs.getString(7));
					vo.setFax1(rs.getString(8));
					vo.setFax2(rs.getString(9));
					vo.setFax3(rs.getString(10));
					vo.setCompany(rs.getString(11));
					vo.setC_name(rs.getString(12));
					vo.setC_number(rs.getString(13));
					vo.setC_phone1(rs.getString(14));
					vo.setC_phone2(rs.getString(15));
					vo.setC_phone3(rs.getString(16));
					vo.setC_post_num(rs.getString(17));
					vo.setC_addr(rs.getString(18));
					vo.setC_addr_d(rs.getString(19));
					vo.setJoindate(rs.getString(20));
				}
				
			}catch (Exception e) {e.printStackTrace();}
			return vo;
		}
	
	
	public void close() {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e) {e.printStackTrace();}
	}
}
