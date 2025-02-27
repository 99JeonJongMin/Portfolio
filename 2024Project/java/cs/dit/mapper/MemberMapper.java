package cs.dit.mapper;

import cs.dit.domain.MemberVO;

public interface MemberMapper {
    public int insertmember(MemberVO member);

    // email과 passwd로 사용자 정보를 조회
    public MemberVO login(MemberVO member);
    
}
