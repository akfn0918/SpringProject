package com.boot.ildan.dto;


import com.boot.ildan.domain.entity.MemberEntity;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class MemberDTO {
   
    private Long id;
    private String email;
    private String password;
    private String phone;
    private String address;
    private String membername;

    public MemberEntity toEntity(){
        return MemberEntity.builder()
                .id(id)
                .email(email)
                .password(password)
                .phone(phone)
                .address(address)
                .membername(membername)
                .build();
    }
    
    public ExtraInfoTO toExtra() {
    	return ExtraInfoTO.builder()
    				.email(email)
    				.memberName(membername)
    				.build();    				
    }

    @Builder
    public MemberDTO(Long id, String email, String password,
                String phone, String address, String membername) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.membername = membername;
    }
}