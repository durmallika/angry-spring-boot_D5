package com.ti.service;

import com.ti.dto.AccountDTO;
import com.ti.dto.PatchDTO;

import java.util.List;

public interface ProfileService {

	List<AccountDTO> findAll();

	AccountDTO findByAcNo(long acno);

	void save(AccountDTO accountDTO);

	void deleteByAcNo(long acno);

	void patchUpdate(PatchDTO patchDTO);

}
