package com.green.biz.contract;

import java.util.List;

import com.green.biz.dto.ContractVO;

public interface ContractService {

	List<ContractVO> contractList();

	void insertContract(ContractVO vo);

	ContractVO getContract(String id);
}