package cs.dit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cs.dit.domain.MemberVO;
import cs.dit.service.MemberService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	
	@PostMapping("/memreg")
	public String memreg(MemberVO member, RedirectAttributes rttr) {
		log.info("memreg" + member);
		
		int count = service.memreg(member);
		
		if(count==1)
			rttr.addFlashAttribute("memreg", "registered");
		
		return "redirect:/board/login";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String userid, @RequestParam String passwd, RedirectAttributes rttr, HttpSession session) {
	    boolean isAuthenticated = service.authenticate(userid, passwd);

	    if (isAuthenticated) {
	        session.setAttribute("userid", userid); // 세션에 사용자 정보 저장
	        return "redirect:/board/index"; // 로그인 성공 시 리다이렉트
	    } else {
	        rttr.addFlashAttribute("error", "아이디 또는 비밀번호가 올바르지 않습니다."); // 에러 메시지 전달
	        return "redirect:/board/login"; // 로그인 페이지로 리다이렉트
	    }
	}

	@GetMapping("/logout")
    public String logout(HttpSession session) {
        // 세션 무효화
        session.invalidate();
        // index 페이지로 리디렉션
        return "redirect:/board/index";
    }
	
	@GetMapping("/memreg")
	public void memreg() {
		log.info("register----------------------------");
	}
	
	
}
