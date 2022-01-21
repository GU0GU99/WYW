package PdsDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class PdsDAO {	// 공통의 멤버변수(전역변수,인스턴스변수)
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	// 공통의 멤버 메서드
	// 디비 연결 (커넥션풀)
	private Connection getCon() throws Exception {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/model2");
		return ds.getConnection();
	}

	// 자원 해제
	public void closeDB() {
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean insert(PdsDTO dto){ 
		
	
		boolean flag=false;
		
		try{ 
			con=getCon();
			sql=(" INSERT INTO tb_pds(pdsno, wname, subject, passwd, filename, filesize, regdate)" 
			+"VALUES ( (SELECT NVL(MAX(pdsno), 0)+1 from tb_pds) , ?, ?, ?, ?, ?, sysdate) ");
			
			PreparedStatement pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, dto.getWname());
			pstmt.setString(2, dto.getSubject()); 
			pstmt.setString(3, dto.getPasswd()); 
			pstmt.setString(4, dto.getFilename()); 
			pstmt.setLong(5, dto.getFilesize());
			int cnt=pstmt.executeUpdate(); 
			
			if(cnt==1){ 
				flag=true; }//if end 
			}
			catch(Exception e){
				System.out.println("사진 추가 실패 : " + e);}
	//try end 
		return flag; 
		}//insert end 
	
public synchronized ArrayList<PdsDTO> list(){ 
	ArrayList<PdsDTO> list=null; 
	try{ 
		con=getCon();
		
		
		sql=" SELECT pdsno, wname, subject, readcnt, regdate, filename "
		+ " FROM tb_pds "
		+" ORDER BY regdate DESC ";
		
		PreparedStatement pstmt=con.prepareStatement(sql); 
		 rs=pstmt.executeQuery();
		 
		if(rs.next()){ 
		
		do{ PdsDTO dto=new PdsDTO(); dto.setPdsno(rs.getInt("pdsno"));
		dto.setWname(rs.getString("wname")); dto.setSubject(rs.getString("subject"));
		dto.setReadcnt(rs.getInt("readcnt"));
		dto.setFilename(rs.getString("filename"));
		dto.setRegdate(rs.getString("regdate"));
		list.add(dto);
		}
		while(rs.next()); 
		}else{ list=null; 
		}//if end
		}catch(Exception e){ System.out.println("목록 불러오기 실패 : "+e); }//try end
	return list; }//list() end
		
	
	

}

