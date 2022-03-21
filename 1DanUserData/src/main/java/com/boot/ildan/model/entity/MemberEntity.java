package com.boot.ildan.model.entity;

import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;


@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "member_table_extra")
public class MemberEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column
    private String email;

    @Column
    private String memberName;

    @Column
    private String tier;
    
    @Column
    private long totalSpent;
    
    @Column
    private Date birth;
    
    @UpdateTimestamp
    @Column(name = "last_access_dt")
    private LocalDateTime lastAccessDt = LocalDateTime.now();

    @CreationTimestamp	
    @Column(name = "reg_dt")
    private LocalDateTime regDt =LocalDateTime.now();

    @Builder
	public MemberEntity(long id, String email, String memberName, String tier, long totalSpent, Date birth,
			LocalDateTime lastAccessDt, LocalDateTime regDt) {

		this.id = id;
		this.email = email;
		this.memberName = memberName;
		this.tier = tier;
		this.totalSpent = totalSpent;
		this.birth = birth;
		this.lastAccessDt = lastAccessDt;
		this.regDt = regDt;
	}


    


	
	//최초 가입용 생성자\
    
	
    
    
    


   
    

    


    
    //getter,setter 생략
}