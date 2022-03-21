package com.boot.ildan.model.to;

import java.time.LocalDateTime;
import java.util.Date;


import com.boot.ildan.model.entity.MemberEntity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MemberTO {
	
	private long id;
	private String email;
	private String memberName;
	private String tier;
	private long totalSpent;
	private Date birth;
	private LocalDateTime lastAccessDt;
	private LocalDateTime regDt;
	
    public MemberEntity toEntity(){
        return MemberEntity.builder()
                .id(id)
                .email(email)
                .memberName(memberName)
                .tier(tier)
                .totalSpent(totalSpent)
                .birth(birth)
                .lastAccessDt(lastAccessDt)
                .regDt(regDt)
                .build();
    }

}
