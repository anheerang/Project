package com.green.biz.admin.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.admin.AdminService;
import com.green.biz.dao.AdminDAO;
import com.green.biz.dto.WorkerVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDao;
	
	@Override
	public int workerCheck(WorkerVO vo) {
		
		int result = -1 ;
		
		String pwd_in_db = adminDao.workerCheck(vo.getId());
		
		if(pwd_in_db==null) {
			result = -1;
		}else if(vo.getPwd().equals(pwd_in_db)) {
			result = 1;
		}else {
			result = 0;
		}
		
		return result ;
	}

	@Override
	public WorkerVO getWorker(String id) {
		
		return adminDao.getWorker(id);
	}



}




