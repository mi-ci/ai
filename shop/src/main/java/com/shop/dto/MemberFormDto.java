package com.shop.dto;

import org.hibernate.validator.constraints.Length;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberFormDto {
	@NotBlank(message="이름은 필수 입력값입니다")
    private String name;
	@NotBlank(message="이메일은 필수 입력값입니다")
    private String email;
	@NotBlank(message="비밀번호는 필수 입력값입니다")
	@Length(min=2, max=16, message="비밀번호는 2자이상 16자이하 입력해주세요")
    private String password;
	@NotBlank(message="주소는 필수 입력값입니다")
    private String address;
	private String adminp;
}
