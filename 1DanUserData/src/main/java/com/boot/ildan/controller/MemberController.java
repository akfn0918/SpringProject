package com.boot.ildan.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.boot.ildan.model.entity.MemberEntity;
import com.boot.ildan.model.to.MemberTO;
import com.boot.ildan.repository.MemberRepository;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/api/mem")
public class MemberController {
	

	MemberRepository memberRepository;


	@GetMapping("/db/{email}")
	public ResponseEntity<MemberEntity> getMemberByEmail(@PathVariable("email") String email) {
		
		Optional<MemberEntity> storeData = memberRepository.findByEmail(email);
		
		
		if (storeData.isPresent()) {
			return new ResponseEntity<>(storeData.get(), HttpStatus.OK);
		} else {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}

	@PostMapping("/db")
	public ResponseEntity<MemberEntity> createExtraDB(@RequestBody MemberTO memberTO) {
		try {
			
			memberTO.setLastAccessDt(LocalDateTime.now());
			if(memberTO.getRegDt()==null) {
				memberTO.setRegDt(LocalDateTime.now());
			}
			if(memberTO.getTier()==null) {
				memberTO.setTier("Bronze");
			}
			
			
			MemberEntity _member = memberRepository.save(memberTO.toEntity());			
			
			return new ResponseEntity<>(_member, HttpStatus.CREATED);
		} catch (Exception e) {
			return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}






}


