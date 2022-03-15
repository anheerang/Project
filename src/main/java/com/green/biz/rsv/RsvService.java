<<<<<<< HEAD
package com.green.biz.rsv;

import java.util.List;

import com.green.biz.dto.RsvVO;

public interface RsvService {

	String getRsvTime(int rseq);

	void insertRsv(RsvVO vo);
	
	List<RsvVO> listRsv(String userid);
	
	void deleteRsv(int rseq);
	
	void updateRsv(int rseq);
	
	List<RsvVO> getListRsv(String mname) ;
	
	void cancelRsv(int rseq);
	
	RsvVO getRsv(RsvVO vo);
	
	String getRsvDay(RsvVO vo);
=======
package com.green.biz.rsv;

import java.util.List;

import com.green.biz.dto.RsvVO;

public interface RsvService {

	String getRsvTime(int rseq);

	void insertRsv(RsvVO vo);
	
	List<RsvVO> listRsv(String userid);
>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
}