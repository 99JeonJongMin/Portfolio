package cs.dit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cs.dit.domain.MemberVO;
import cs.dit.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
public class MemberServicempl implements MemberService {
	
	@Autowired
	private  MemberMapper mapper;
	
	@Override
	public int memreg(MemberVO member) {
		// TODO Auto-generated method stub
		
		
		int i = mapper.insertmember(member);
		
		
		
		return i;
	}
	
	@Override
	 public boolean authenticate(String userid, String passwd) {
        // 로그인 쿼리 실행 - 이제 반환값은 MemberVO
        MemberVO member = mapper.login(new MemberVO(userid, passwd));

        // 사용자 존재 및 비밀번호 일치 여부 확인
        if (member != null && member.getPasswd().equals(passwd)) {
            return true;  // 비밀번호가 일치하면 로그인 성공
        }
        return false;  // 로그인 실패
    }
}
