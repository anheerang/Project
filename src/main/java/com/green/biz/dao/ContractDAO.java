package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ContractVO;

@Repository
public class ContractDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<ContractVO> contractList(){
		
		return mybatis.selectList("mappings.contract-mapping.contractList");
	}
	
	
	public void insertContract(ContractVO vo) {
		
		mybatis.insert("mappings.contract-mapping.insertContract", vo);
	}
	
	public ContractVO getContract(String id) {
		
		return mybatis.selectOne("mappings.contract-mapping.getContract", id);
	}
}







