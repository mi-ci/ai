package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.dto.MemberFormDto;
import com.shop.entity.Member;
import com.shop.repository.MemberRepository;
import com.shop.service.MemberService;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/members")
@RequiredArgsConstructor
public class MemberController {
	private final MemberService memberService;
	private final PasswordEncoder passwordEncoder;
	
	@GetMapping(value="/new")
	public String memberForm(Model model) {
		model.addAttribute("memberFormDto", new MemberFormDto());
		return "member/memberForm";
	}
	
	@PostMapping(value="/new")
	public String memberForm(@Valid MemberFormDto memberFormDto, BindingResult bindingResult, Model model) {
		if(bindingResult.hasErrors()) {
			return "member/memberForm";
		}
		try {
			Member member = Member.createMember(memberFormDto, passwordEncoder);
			memberService.saveMember(member);			
			return "redirect:/";
		} 
		catch (IllegalStateException e) {
			model.addAttribute("errorMessage", e.getMessage());
			return "member/memberForm";
		}
	}
	
	@GetMapping(value="/login")
	public String loginMember() {
		return "member/memberLoginForm";
	}
	
	@GetMapping(value="/login/error")
	public String loginError(Model model) {
		model.addAttribute("loginErrorMsg", "아이디 또는 비밀번호가 틀립니다.");
		return "member/memberLoginForm";
	}
	
	@PostMapping(value="/login")
	public String loginMember2() {
		return "main";			
	}
}
