package com.ti.service;

import com.ti.dao.AccountRepository;
import com.ti.dao.entity.AccountEntity;
import com.ti.dto.AccountDTO;
import com.ti.dto.PatchDTO;
import com.ti.exception.AccountNotFoundException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	private AccountRepository accountRepository;

	@Override
	public List<AccountDTO> findAll() {
		List<AccountEntity> accountEntityList = accountRepository.findAll();
		List<AccountDTO> accountDTOs = new ArrayList<AccountDTO>();
		for (AccountEntity entity : accountEntityList) {
			AccountDTO accountDTO = new AccountDTO();
			BeanUtils.copyProperties(entity, accountDTO);
			accountDTOs.add(accountDTO);
		}
		return accountDTOs;
	}
	
	@Override
	public AccountDTO findByAcNo(long acno) {
		Optional<AccountEntity> accountEntityOpt=accountRepository.findById(acno);
		AccountDTO accountDTO = new AccountDTO();
		if(accountEntityOpt.isPresent()) {
			BeanUtils.copyProperties(accountEntityOpt.get(), accountDTO);	
		}else {
			throw new AccountNotFoundException("Sorry "+acno+ " not found in the database");
		}
		return accountDTO;
	}
	
	@Override
	public void save(AccountDTO accountDTO) {
		AccountEntity accountEntity=new AccountEntity();
		BeanUtils.copyProperties(accountDTO, accountEntity);
		accountEntity.setDoe(new Timestamp(new Date().getTime()));
		accountRepository.save(accountEntity);
	}
	
	@Override
	@Transactional
	public void patchUpdate(PatchDTO patchDTO) {
		Optional<AccountEntity> optional = accountRepository.findById(patchDTO.getAcNo());
		if (optional.isPresent()) {
			AccountEntity accountEntity = optional.get();
			if ("balance".equalsIgnoreCase(patchDTO.getAttributeName())) {
				accountEntity.setBalance(Integer.parseInt(patchDTO.getAttributeValue()));
			} else if ("type".equalsIgnoreCase(patchDTO.getAttributeName())) {
				accountEntity.setType(patchDTO.getAttributeValue());
			}
		}
	}
	
	@Override
	public void deleteByAcNo(long acno) {
		accountRepository.deleteById(acno);
		
	}
	

	
}
