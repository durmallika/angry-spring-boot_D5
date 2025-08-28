package com.ti.controller;

import com.ti.dto.AccountDTO;
import com.ti.dto.AppResponse;
import com.ti.dto.PatchDTO;
import com.ti.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v4")
@CrossOrigin(origins = "*")
public class AccountController {
	
	@Autowired
	private ProfileService profileService;

	// Endpoint for resource
	@GetMapping("/accounts")
	@ResponseStatus(HttpStatus.OK)
	public List<AccountDTO> findAll() {
		List<AccountDTO> accountDTOs =profileService.findAll();
		return accountDTOs;
	}

	@GetMapping("/accounts/{tacno}")
	@ResponseStatus(HttpStatus.OK)
	public AccountDTO findByAcNo(@PathVariable("tacno") long acno) {
		return profileService.findByAcNo(acno);
	}
	
	@PostMapping("/accounts")
	@ResponseStatus(HttpStatus.CREATED)
	public AppResponse createNewAccount(@RequestBody AccountDTO accountDTO) {
		profileService.save(accountDTO);
		AppResponse appResponse=new AppResponse();
		appResponse.setCode(122);
		appResponse.setMessage("Record has been created successfully");
		return appResponse;
	}
	
	@PutMapping("/accounts")
	@ResponseStatus(HttpStatus.OK)
	public AppResponse updateAccount(@RequestBody AccountDTO accountDTO) {
		profileService.save(accountDTO);
		AppResponse appResponse=new AppResponse();
		appResponse.setCode(122);
		appResponse.setMessage("Record has been updated successfully");
		return appResponse;
	}
	
	@PatchMapping("/accounts")
	@ResponseStatus(HttpStatus.OK)
	public AppResponse patchUpdateAccount(@RequestBody PatchDTO patchDTO) {
		profileService.patchUpdate(patchDTO);
		AppResponse appResponse=new AppResponse();
		appResponse.setCode(122);
		appResponse.setMessage("Record has been created successfully");
		return appResponse;
	}
	
	
	@DeleteMapping("/accounts/{tacno}")
	@ResponseStatus(HttpStatus.OK)
	public AppResponse deleteByAcNo(@PathVariable("tacno") long acno) {
		profileService.deleteByAcNo(acno);
		AppResponse appResponse=new AppResponse();
		appResponse.setCode(122);
		appResponse.setMessage("Record has been deleted successfully");
		return appResponse;
	}

}
