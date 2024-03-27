package com.shop.entity;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.TestPropertySource;

import com.shop.dto.MemberFormDto;
import com.shop.repository.CartRepository;
import com.shop.repository.MemberRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@SpringBootTest
@Transactional
@TestPropertySource(locations="classpath:application.properties")
public class CartTest {
	@Autowired //injection
	CartRepository cartRepository;
	
	@Autowired
	MemberRepository memberRepository;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@PersistenceContext
	EntityManager em;
	
	public Member createMember() {
		MemberFormDto memberfFormDto = new MemberFormDto();
		memberfFormDto.setEmail("test@gmail.com");
		memberfFormDto.setName("장우진");
		memberfFormDto.setAddress("서울시 천호동");
		memberfFormDto.setPassword("1234");
		memberfFormDto.setAdminp("1");
		return Member.createMember(memberfFormDto, passwordEncoder);
	}
	
	@Test
	@DisplayName("장바구니 회원 엔티티 매핑 조회 테스트")
	public void findCartAndMemberTest() {
		Member member = createMember();
		memberRepository.save(member);
		
		Cart cart = new Cart();
		cart.setMember(member);
		cartRepository.save(cart);
		
		em.flush();
		em.clear();
		
		Cart savedCart = cartRepository.findById(cart.getId()).orElseThrow(EntityNotFoundException::new);
		System.out.println("---------------------------------------------------------------------------------------------------------------------------------");
		System.out.println(savedCart.getId());
		System.out.println(member.getId()+1);
		assertEquals(savedCart.getId(), member.getId());
	}
}
