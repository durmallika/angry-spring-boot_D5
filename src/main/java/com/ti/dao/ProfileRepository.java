package com.ti.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
public interface ProfileRepository extends JpaRepository<SignupEntity,Integer> {

	@Modifying
	@Transactional
	public void deleteByUsername(String username);
	
	public Optional<SignupEntity> findByUsernameAndPassword(String userame,String password);
	
}
