package com.madang.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.madang.vo.Group_mem_VO;
import com.madang.vo.NoticeVO;
import com.madang.vo.QandA_VO;
import com.madang.vo.Rental_VO;

public class Rental_DAO {
	//Field
	String url="jdbc:oracle:thin:@211.63.89.214:1521";
	String user="madang";
	String pass="1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	//Constructor
	public Rental_DAO() {
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
	
	/** ����Ʈ ��� */
	public ArrayList<Rental_VO> getList(String id){
		ArrayList<Rental_VO> list=new ArrayList<Rental_VO>();
		
		String sql="select r_case, rental_code, r_title, \r\n" + 
				"  to_char(r_sdate, 'yyyy-mm-dd'), to_char(r_edate, 'yyyy-mm-dd'), \r\n" + 
				"  r_place, r_status, floor(sysdate-to_date(r_sdate,'yy/mm/dd')) startcount, floor(to_date(r_edate,'yy/mm/dd')-sysdate)+1 endcount \r\n" + 
				"  from rental where r_id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				Rental_VO vo=new Rental_VO();
				vo.setR_case(rs.getString(1));
				vo.setRental_code(rs.getString(2));
				vo.setR_title(rs.getString(3));
				vo.setR_sdate(rs.getString(4));
				vo.setR_edate(rs.getString(5));
				vo.setR_place(rs.getString(6));
				vo.setR_status(rs.getString(7));
				if(rs.getString(7).equals("��û�Ϸ�")) {
					if(rs.getInt(9)>=0) {
						if(rs.getInt(8)<0) {
							vo.setR_status2("����");
						} else {
							vo.setR_status2("������");
						}
					} else {
						vo.setR_status2("����");
					}
				}
				list.add(vo);
			}
		} catch (Exception e) {e.printStackTrace();}
		
		return list;
	}
	
	
	
	/** �󼼳��� ��� */
	public Rental_VO getContent(String rental_code, String id) {
		Rental_VO vo=new Rental_VO();
		
		String sql="select rental_code, r_case, r_title, r_place, \r\n" + 
				"  to_char(r_sdate, 'yyyy-mm-dd')||' ('||to_char(r_sdate, 'dy')||')', to_char(r_edate, 'yyyy-mm-dd')||' ('||to_char(r_sdate, 'dy')||')', \r\n" + 
				"  r_opentime, r_time, r_rhtime, r_status, r_id, r_file, r_sfile, r_date, \r\n" + 
				"  floor(sysdate-to_date(r_sdate,'yy/mm/dd')) startcount, floor(to_date(r_edate,'yy/mm/dd')-sysdate)+1 endcount \r\n" + 
				"  from rental where rental_code=? and r_id=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rental_code);
			pstmt.setString(2, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setRental_code(rs.getString(1));
				vo.setR_case(rs.getString(2));
				vo.setR_title(rs.getString(3));
				vo.setR_place(rs.getString(4));
				vo.setR_sdate(rs.getString(5));
				vo.setR_edate(rs.getString(6));
				vo.setR_opentime(rs.getString(7));
				vo.setR_time(rs.getString(8));
				vo.setR_rhtime(rs.getString(9));
				vo.setR_status(rs.getString(10));
				vo.setR_id(rs.getString(11));
				vo.setR_file(rs.getString(12));
				vo.setR_sfile(rs.getString(13));
				if(rs.getString(10).equals("��û�Ϸ�")) {
					if(rs.getInt(15)>=0) {
						if(rs.getInt(14)<0) {
							vo.setR_status2("����");
						} else {
							vo.setR_status2("������");
						}
					} else {
						vo.setR_status2("����");
					}
				}
				vo.setR_date(rs.getString(14));
			}
			
		} catch (Exception e) {e.printStackTrace();}
		
		return vo;
	}
	
	
	/** ��� ��û */
	public boolean getResultcancel(String rental_code) {
		boolean result=false;
		
		String sql="update rental set r_status='��ҽ�û' where rental_code=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, rental_code);
			
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
			
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	//rental request (insert)
	public boolean getResultRentalRequest(Rental_VO vo) {
		boolean result = false;
		String sql = "insert into rental values('rt'||lpad(sequ_rental.nextval,4,0),?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
		getPreparedStatement(sql);
		System.out.println("daO"+vo.getR_place());
		try {
			pstmt.setString(1, vo.getR_case());
			pstmt.setString(2, vo.getR_title());
			pstmt.setString(3, vo.getR_place());
			pstmt.setString(4, vo.getR_sdate());
			pstmt.setString(5, vo.getR_edate());
			pstmt.setString(6, vo.getR_opentime());
			pstmt.setString(7, vo.getR_time());
			pstmt.setString(8, vo.getR_rhtime());
			pstmt.setString(9, vo.getR_status());
			pstmt.setString(10, vo.getR_id());
			pstmt.setString(11, vo.getR_file());
			pstmt.setString(12, vo.getR_sfile());
			
			int val=pstmt.executeUpdate();
			if(val!=0) result=true;
		} catch (Exception e) {e.printStackTrace();}
		
		return result;
	}
	
	
	
	//admin main list
	public ArrayList<Rental_VO> getListAdminMain(){
		ArrayList<Rental_VO> list = new ArrayList<Rental_VO>();
		String sql="select * from(select rownum rno, rental_code, r_case, r_title, to_char(r_date,'yyyy/mm/dd'), r_status, floor(sysdate-to_date(r_sdate,'yy/mm/dd')) startcount, floor(to_date(r_edate,'yy/mm/dd')-sysdate)+1 endcount from(select*from rental order by r_date desc)order by rno desc)where rno between 1 and 3 order by rno";
		getPreparedStatement(sql);
		try {
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Rental_VO vo = new Rental_VO();
				vo.setRno(rs.getInt(1));
				vo.setRental_code(rs.getString(2));
				vo.setR_case(rs.getString(3));
				vo.setR_title(rs.getString(4));
				vo.setR_date(rs.getString(5));
				if(rs.getString(6).equals("��û�Ϸ�")) {
					if(rs.getInt(8)>=0) { // ��¥���� ���ϱ�
						if(rs.getInt(7)<0) {
							vo.setR_status("����");
						} else {
							vo.setR_status("������");
						}
					} else {
						vo.setR_status("����");
					}
				}else {
					vo.setR_status(rs.getString(6));
				}
				
				
				
				list.add(vo);
			}
			
		}catch(Exception e) {e.printStackTrace();}
		return list; 
	}
	
	
	
	//Admin main list count
	public int getAdminMainCount() {
		int count =0;
		String sql = "select count(*) from rental";
		getPreparedStatement(sql);
		try {
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
				if(count>3) {
					count=3;
				}
			}
			
		}catch(Exception e) {e.printStackTrace();}
		return count;
		
	}
	
	
	
///////////////////////////////////////////////////////////////////////////////////////////concert	admin
	//Admin list _concert
	public ArrayList<Rental_VO> getListAdminConcert(int startCount, int endCount){
		ArrayList<Rental_VO> list = new ArrayList<Rental_VO>();
		String sql="select * from(select rownum rno, rental_code, r_title, " + 
				"to_char(r_date,'yyyy/mm/dd'), to_char(r_sdate,'yyyy/mm/dd'),to_char(r_edate,'yyyy/mm/dd'), " + 
				"r_id, " + 
				"floor(sysdate-r_sdate) startcount, " + 
				"floor(r_edate-sysdate)+1 endcount, " + 
				"r_status " + 
				"from(select*from rental where r_case='����' order by r_date desc)) " + 
				"where rno  between ? and ?";
		getPreparedStatement(sql);
		try {
			
			pstmt.setInt(1, startCount);
			pstmt.setInt(2, endCount);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Rental_VO vo = new Rental_VO();
				
				vo.setRno(rs.getInt(1));
				vo.setRental_code(rs.getString(2));
				vo.setR_title(rs.getString(3));
				vo.setR_date(rs.getString(4));
				vo.setR_sdate(rs.getString(5));
				vo.setR_edate(rs.getString(6));
				vo.setR_id(rs.getString(7));
				if(rs.getString(10).equals("��û�Ϸ�")) {
					if(rs.getInt(9)>=0) { // ��¥���� ���ϱ�
						if(rs.getInt(8)<0) {
							vo.setR_status("����");
						} else {
							vo.setR_status("������");
						}
					} else {
						vo.setR_status("����");
					}
				}else {
					vo.setR_status(rs.getString(10));
				}
				
				list.add(vo);
			}
			
		} catch (Exception e) {e.printStackTrace();}
		return list;
	}
	
	
	//Admin paging_concert
		public int execTotalCountConcert(){
			int result =0;
			try{
				String sql = "select count(*) from rental where r_case='����'";
				getPreparedStatement(sql);
				
				rs = pstmt.executeQuery();
				if(rs.next()){
					result = rs.getInt(1);
				}
			}catch(Exception e){e.printStackTrace();}
			
			return result;
		}
		
		
		//Admin bring the contents
		public Rental_VO getRentalContents_con_Admin(String retal_code) {
			Rental_VO vo = new Rental_VO();
			String sql="select r_title, r_place,to_char(r_sdate,'yyyy/mm/dd'), "
					+ "to_char(r_edate,'yyyy/mm/dd'), r_opentime, r_time, r_rhtime, "
					+ "floor(sysdate-r_sdate) startcount, floor(r_edate-sysdate)+1 endcount, r_status, "
					+ "r_file, r_sfile, r_id, r_date from rental "
					+ "where r_case='����' and rental_code=?";
			getPreparedStatement(sql);
			try {
				
				pstmt.setString(1, retal_code);
				
				rs=pstmt.executeQuery();
				if(rs.next()) {
					vo.setR_title(rs.getString(1));
					vo.setR_place(rs.getString(2));
					vo.setR_sdate(rs.getString(3));
					vo.setR_edate(rs.getString(4));
					vo.setR_opentime(rs.getString(5));
					vo.setR_time(rs.getString(6));
					vo.setR_rhtime(rs.getString(7));
					
					if(rs.getString(10).equals("��û�Ϸ�")) {
						if(rs.getInt(9)>=0) { // ��¥���� ���ϱ�
							if(rs.getInt(8)<0) {
								vo.setR_status("����");
							} else {
								vo.setR_status("������");
							}
						} else {
							vo.setR_status("����");
						}
					}else {
						vo.setR_status(rs.getString(10));
					}
					
					vo.setR_file(rs.getString(11));
					vo.setR_sfile(rs.getString(12));
					vo.setR_id(rs.getString(13));
					vo.setR_date(rs.getString(14));
				}
				
			}catch(Exception e){e.printStackTrace();}
			return vo;
		}
		

		
		

		
////////////////////////////////////////////////////////////////////////////////////exhibiton admin		
		//Admin list _Exhibition
		public ArrayList<Rental_VO> getListAdminExhibition(int startCount, int endCount){
			ArrayList<Rental_VO> list = new ArrayList<Rental_VO>();
			String sql="select * from(select rownum rno, rental_code, r_title, " + 
					"to_char(r_date,'yyyy/mm/dd'), to_char(r_sdate,'yyyy/mm/dd'),to_char(r_edate,'yyyy/mm/dd'), " + 
					"r_id, " + 
					"floor(sysdate-r_sdate) startcount, " + 
					"floor(r_edate-sysdate)+1 endcount, " + 
					"r_status " + 
					"from(select*from rental where r_case='����' order by r_date desc)) " + 
					"where rno  between ? and ?";
			getPreparedStatement(sql);
			try {
				
				pstmt.setInt(1, startCount);
				pstmt.setInt(2, endCount);
				
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Rental_VO vo = new Rental_VO();
					
					vo.setRno(rs.getInt(1));
					vo.setRental_code(rs.getString(2));
					vo.setR_title(rs.getString(3));
					vo.setR_date(rs.getString(4));
					vo.setR_sdate(rs.getString(5));
					vo.setR_edate(rs.getString(6));
					vo.setR_id(rs.getString(7));
					if(rs.getString(10).equals("��û�Ϸ�")) {
						if(rs.getInt(9)>=0) { // ��¥���� ���ϱ�
							if(rs.getInt(8)<0) {
								vo.setR_status("����");
							} else {
								vo.setR_status("������");
							}
						} else {
							vo.setR_status("����");
						}
					}else {
						vo.setR_status(rs.getString(10));
					}
					
					list.add(vo);
				}
				
			} catch (Exception e) {e.printStackTrace();}
			return list;
		}
		
		
		//Admin paging_exhibition
			public int execTotalCountExhibition(){
				int result =0;
				try{
					String sql = "select count(*) from rental where r_case='����'";
					getPreparedStatement(sql);
					
					rs = pstmt.executeQuery();
					if(rs.next()){
						result = rs.getInt(1);
					}
				}catch(Exception e){e.printStackTrace();}
				
				return result;
			}		
			
			
			//Admin bring the contents
			public Rental_VO getRentalContents_exh_Admin(String retal_code) {
				Rental_VO vo = new Rental_VO();
				String sql="select r_title, r_place,to_char(r_sdate,'yyyy/mm/dd'), "
						+ "to_char(r_edate,'yyyy/mm/dd'), r_opentime, r_time, "
						+ "floor(sysdate-r_sdate) startcount, floor(r_edate-sysdate)+1 endcount, r_status, "
						+ "r_file, r_sfile, r_id, r_date from rental "
						+ "where r_case='����' and rental_code=?";
				getPreparedStatement(sql);
				try {
					
					pstmt.setString(1, retal_code);
					
					rs=pstmt.executeQuery();
					if(rs.next()) {
						vo.setR_title(rs.getString(1));
						vo.setR_place(rs.getString(2));
						vo.setR_sdate(rs.getString(3));
						vo.setR_edate(rs.getString(4));
						vo.setR_opentime(rs.getString(5));
						vo.setR_time(rs.getString(6));
						
						if(rs.getString(9).equals("��û�Ϸ�")) {
							if(rs.getInt(8)>=0) { // ��¥���� ���ϱ�
								if(rs.getInt(7)<0) {
									vo.setR_status("����");
								} else {
									vo.setR_status("������");
								}
							} else {
								vo.setR_status("����");
							}
						}else {
							vo.setR_status(rs.getString(9));
						}
						
						vo.setR_file(rs.getString(10));
						vo.setR_sfile(rs.getString(11));
						vo.setR_id(rs.getString(12));
						vo.setR_date(rs.getString(13));
					}
					
				}catch(Exception e){e.printStackTrace();}
				return vo;
			}
/////////////////////////////////////////////////////////////////////////////////////////
			
		//+) detail - rental applicant info
		public Group_mem_VO getRentalApplicantInfoAdmin(String r_id) {
			Group_mem_VO vo = new Group_mem_VO();
			String sql="select name, phone1, phone2, phone3, company from group_mem where id=?";
			getPreparedStatement(sql);
			try {
				pstmt.setString(1, r_id);
				
				rs=pstmt.executeQuery();
				if(rs.next()) {
					vo.setName(rs.getString(1));
					vo.setPhone1(rs.getString(2));
					vo.setPhone2(rs.getString(3));
					vo.setPhone3(rs.getString(4));
					vo.setCompany(rs.getString(5));
					
				}
			}catch(Exception e){e.printStackTrace();}
			return vo;
		}
		
		//detail accept request
		public boolean getResultUpdate(String rental_code) {
			boolean result=false;
			String sql = "update rental set r_status='��û�Ϸ�' where rental_code=?";
			getPreparedStatement(sql);
			try{
				pstmt.setString(1, rental_code);
				
				int val = pstmt.executeUpdate();
				if(val!=0) {
					result = true;
				}
			}catch(Exception e){e.printStackTrace();}
			return result;
		}
		
		//detail cancel request
		public boolean getResultCancel(String rental_code) {
			boolean result=false;
			String sql = "update rental set r_status='��ҿϷ�' where rental_code=?";
			getPreparedStatement(sql);
			try{
				pstmt.setString(1, rental_code);
				
				int val = pstmt.executeUpdate();
				if(val!=0) {
					result = true;
				}
			}catch(Exception e){e.printStackTrace();}
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
