package com.green.biz.contract.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.contract.ContractService;
import com.green.biz.dao.ContractDAO;
import com.green.biz.dto.ContractVO;

@Service("contractService")
public class ContractServiceImpl implements ContractService {

	@Autowired
	private ContractDAO contractDao;
	
	@Override
	public List<ContractVO> contractList() {
		
		return contractDao.contractList();
	}

	@Override
	public void insertContract(ContractVO vo) {
		
		contractDao.insertContract(vo);
	}

	@Override
	public ContractVO getContract(String id) {
		
		return contractDao.getContract(id);
	}

}
