package com.boot.ildan.dto;

import java.time.LocalDateTime;
import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@Builder
@NoArgsConstructor
public class ExtraInfoTO {
	
	private long id;
	private String email;
	private String memberName;
	private String tier;
	private long totalSpent;
	private Date birth;
	private LocalDateTime lastAccessDt;
	private LocalDateTime regDt;
	

}
