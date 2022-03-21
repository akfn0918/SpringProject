package com.boot.controller;

import java.net.http.HttpRequest;
import java.security.Principal;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.boot.ildan.client.ExtraInfoClient;
import com.boot.ildan.domain.entity.MemberEntity;
import com.boot.ildan.dto.ExtraInfoTO;
import com.boot.ildan.dto.MemberDTO;
import com.boot.ildan.service.MemberService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class MainController {
    private MemberService memberService;
    
    private ExtraInfoClient exInfoClient;

    // 메인 페이지
    @GetMapping("/")
    public String index() {
    	
    	
        return "/main";
    }
    
    
    // 회원가입 페이지
    @GetMapping("/join")
    public String dispSignup() {
        return "/join";
    }
    // 회원가입 처리
    @PostMapping("/signup")
    public String execSignup(MemberDTO memberDto) {
    	
        memberService.joinUser(memberDto);
        exInfoClient.createExtraDB(memberDto.toExtra()); 

        return "redirect:/";
    }

    
    

    // 로그인 페이지
    @GetMapping("/userlogin")
    public String dispLogin() {
        return "/login";
    }

    // 로그인 결과 페이지
    @GetMapping("/loginresult")
    public String dispLoginResult(Principal principal, HttpSession session) throws Exception {
    
    	String email = principal.getName();
    	
    	Optional<MemberEntity> member = memberService.getMemInfo(email);
    	
    	String name = member.get().getMembername();
    	String address = member.get().getAddress();
    	String phone = member.get().getPhone();
    	long id = member.get().getId();
    	
    	session.setAttribute("name", name);
    	session.setAttribute("address", address);
    	session.setAttribute("phone", phone);
    	session.setAttribute("id", id) ; 
        return "/main";
    }
    
	/*
	 * @GetMapping("/mypage") public String mypage(Principal principal
	 * ,HttpServletRequest req) {
	 * 
	 * String email = principal.getName();
	 * 
	 * ResponseEntity<ExtraInfoTO> extra = exInfoClient.getMemberByEmail(email);
	 * 
	 * Date birth =extra.getBody().getBirth(); String name =
	 * extra.getBody().getMemberName(); String tier = extra.getBody().getTier();
	 * long totalSpent = extra.getBody().getTotalSpent(); LocalDateTime regDt =
	 * extra.getBody().getRegDt(); LocalDateTime lastAccessDt =
	 * extra.getBody().getLastAccessDt();
	 * 
	 * 
	 * req.setAttribute("birth",birth); req.setAttribute("name",name);
	 * req.setAttribute("tier",tier); req.setAttribute("totalSpent",totalSpent);
	 * req.setAttribute("regDt",regDt);
	 * req.setAttribute("lastAccessDt",lastAccessDt);
	 * 
	 * return "mypage"; }
	 */
	
	@PostMapping("/extrainfo")
	public String extrainfo(ExtraInfoTO extraTO) {
		
		exInfoClient.createExtraDB(extraTO);
		
		
		
		
		return "main";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}
	
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage";
	}
	
    // 로그아웃 결과 페이지
    @GetMapping("/user/logout/result")
    public String dispLogout() {
        return "/logout";
    }

    // 접근 거부 페이지
    @GetMapping("/user/denied")
    public String dispDenied() {
        return "/denied";
    }

    // 내 정보 페이지
    @GetMapping("/user/info")
    public String dispMyInfo() {
        return "/myinfo";
    }

    // 어드민 페이지
    @GetMapping("/admin")
    public String dispAdmin() {
        return "/admin";
    }

	
	
	
	
}