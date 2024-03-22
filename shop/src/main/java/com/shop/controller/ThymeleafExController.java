package com.shop.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.dto.ItemDto;
import com.shop.dto.Student;

@Controller
@RequestMapping(value="/th")
public class ThymeleafExController {
	
	@GetMapping(value="/ex01")
	public String thymeleafEx01(Model model) {
		model.addAttribute("data", "너는 누구니?");
		model.addAttribute("data2", "ddd");
		return "thymeleafEx/thymeleafEx01";
	}
	@GetMapping(value="/ex07")
	public String thymeleafEx07(Model model) {
		model.addAttribute("data", "장우진");
		return "thymeleafEx/thymeleafEx07";
	}
	@GetMapping(value="/ex08")
	public String thymeleafEx08(Model model) {
		List<String> names =new ArrayList<>();
		for(int i=0; i<10; i++) {
			names.add("장우진"+i);
		}
		model.addAttribute("data", names);
		return "thymeleafEx/thymeleafEx08";
	}
	@GetMapping(value="/ex06")
	public String thymeleafEx06(Model model) {
		return "thymeleafEx/thymeleafEx06";
	}
	
	@GetMapping(value="/ex02")
	public String thymeleafEx02(Model model) {
		ItemDto itemDto = new ItemDto();
		itemDto.setItemDetail("상세 설명");
		itemDto.setItemNm("테스트 상품1");
		itemDto.setPrice(10000);
		itemDto.setRegTime(LocalDateTime.now());
		model.addAttribute("data3", itemDto);
		return "thymeleafEx/thymeleafEx02";
	}
	
	@GetMapping(value="/ex05")
	public String thymeleafEx05(Model model) {
		List<ItemDto> itemDtoList =new ArrayList<>();
		for(int i=1; i<=10; i++) {
			ItemDto itemDto = new ItemDto();
			itemDto.setItemDetail("상품 상세 설명" + i);
			itemDto.setItemNm("테스트 상품" + i);
			itemDto.setPrice(10000 + i);
			itemDto.setRegTime(LocalDateTime.now());
			itemDto.setSellStatus("판매중");
			itemDto.setUpdateTime(LocalDateTime.now());
			itemDtoList.add(itemDto);
		}
		model.addAttribute("itemDtoList", itemDtoList);
		model.addAttribute("test", "test1");
		return "thymeleafEx/thymeleafEx05";
	}
	
	@GetMapping(value="/ex09")
	public String thymeleafEx09(Model model) {
		List<Student> studentList =new ArrayList<>();
		for(int i=0; i<5; i++) {
			Student student = new Student();
			student.setName("장우진"+i);
			student.setPhone("010"+i);
			student.setHobby("컴퓨터"+i);
			studentList.add(student);
		}
		model.addAttribute("data", studentList);
		return "thymeleafEx/thymeleafEx09";
	}
	
	@GetMapping(value="/ex11")
	public String thymeleafEx11(String param1, String param2, Model model) {
		System.out.println("param1=>" + param1);
		System.out.println("param2=>" + param2);
		String answer = param1 + "!!!###" + param2;
		model.addAttribute("response", answer);
		return "thymeleafEx/th1101";
	}
	@GetMapping(value="/ex12")
	public String thymeleafEx12(String name, String phone, String hobby, Model model) {
		Student student = new Student();
		student.setName(name);
		student.setPhone(phone);
		student.setHobby(hobby);
		String answer = name + " " + phone + " " + hobby;
		model.addAttribute("response", answer);
		return "thymeleafEx/th1101";
	}
	
	@GetMapping(value="/ex13")
	public String thymeleafEx13(String name, int score, Model model) {
		String pass = "합격";
		if (score<60) {
			pass = "불합격";
		}
		String answer = name + "님 " + pass + "하셨습니다";
		model.addAttribute("response", answer);
		return "thymeleafEx/th1101";
	}
	@GetMapping(value="/ex14")
	public String thymeleafEx14() {
		return "thymeleaf14";
	}

}