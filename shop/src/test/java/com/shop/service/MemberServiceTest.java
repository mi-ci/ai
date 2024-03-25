package com.shop.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.shop.dto.MemberFormDto;
import com.shop.entity.Member;
import com.shop.repository.MemberRepository;

@SpringBootTest
@Transactional
@TestPropertySource(locations="classpath:application.properties")
public class MemberServiceTest {
	@Autowired
	MemberService memberService;
	
	@Autowired
	MemberRepository memberRepository;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	public Member createMember() {
		MemberFormDto memberfFormDto = new MemberFormDto();
		memberfFormDto.setEmail("test@gmail.com");
		memberfFormDto.setName("장우진");
		memberfFormDto.setAddress("서울시 천호동");
		memberfFormDto.setPassword("1234");
		return Member.createMember(memberfFormDto, passwordEncoder);
	}
	
	@Test
	public void createMember2() {
		Member member = new Member();
		member.setEmail("test@gmail.com");
		member.setName("장우진");
		member.setAddress("서울시 천호동");
		member.setPassword("1234");
		Member savedMember = memberRepository.save(member);
		System.out.println( savedMember.toString());
	}
	
//	@Test
	@DisplayName("회원가입테스트")
	public void saveMemberTest() {
		Member member = createMember();
		Member saveMember = memberService.saveMember(member);
		assertEquals(member.getEmail(), saveMember.getEmail());
		assertEquals(member.getName(), saveMember.getName());
		assertEquals(member.getAddress(), saveMember.getAddress());
		assertEquals(member.getPassword(), saveMember.getPassword());
	}
	
//	@Test
	@DisplayName("중복회원가입테스트")
	public void saveDuplicateMemberTest() {
		Member member1 = createMember();
		Member member2 = createMember();
		memberService.saveMember(member1);
		
		Throwable e = assertThrows(IllegalStateException.class, ()-> {
			memberService.saveMember(member2);
		});
		
		assertEquals("이미 가입된 회원입니다.", e.getMessage());
	}
}
