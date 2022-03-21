package com.boot.ildan.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.boot.ildan.model.entity.MemberEntity;



public interface MemberRepository extends JpaRepository<MemberEntity, Long> {
	
	Optional<MemberEntity> findByEmail(String email);
	


}
