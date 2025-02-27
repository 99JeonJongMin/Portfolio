package cs.dit.domain;




import java.sql.Date;

import lombok.Data;





@Data
public class MemberVO {
	private String userid, passwd, name,email;
	private Date date;
	
	public String delete(String userid) {
		// TODO Auto-generated method stub
		return null;
	}
	// 기본 생성자 추가
    public MemberVO() {}
    
	public static MemberVO read(String userid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	 public MemberVO(String userid, String passwd, String name, String email) {
	        this.userid = userid;
	        this.passwd = passwd;
	        this.name = name;
	        this.email = email;
	    }
	 
	 public MemberVO(String userid, String passwd) {
		 this.userid = userid;  
		 this.passwd = passwd;
	        
	    }
}
