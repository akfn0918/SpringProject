package com.boot.ildan.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.boot.ildan.domain.entity.MemberEntity;
import com.boot.ildan.dto.ExtraInfoTO;


@FeignClient("member-db")
public interface ExtraInfoClient {
	
	@PostMapping(value="/api/mem/db")
	ResponseEntity<ExtraInfoTO> createExtraDB(@RequestBody ExtraInfoTO memberTO);
	
	@GetMapping(value = "/api/mem/db/{email}")
	ResponseEntity<ExtraInfoTO> getMemberByEmail(@PathVariable("email") String email);
	
	
	

}
