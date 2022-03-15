<<<<<<< HEAD
package com.green.biz.like;

import java.util.List;

import com.green.biz.dto.LikeVO;

public interface LikeService {

	List<LikeVO> listLike(String id);
	
	void insertLike(LikeVO vo);
	
	void deleteLike(int lseq);

=======
package com.green.biz.like;

import java.util.List;

import com.green.biz.dto.LikeVO;

public interface LikeService {

	int selectMaxLseq();
	
	int insertLike(LikeVO vo);

	List<LikeVO> listLike(LikeVO vo);
	
	void insertLikeDetail(LikeVO vo);

>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
}