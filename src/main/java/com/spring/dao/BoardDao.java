package com.spring.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.dto.BoardDto;

@Mapper
public interface BoardDao
{
	public List<BoardDto> list(int start, int end);	
	public int articleCount();
	
//	public RBoardDto view(@Param("rnum")String rnum);
//	public int write(Map<String, String> map);
//	public int delete(@Param("rnum")String rnum);	
//	public int upHit(String rnum);
//	public int modify(Map<String, String> map);
//	public int reply(String rtitle, String rcontent, int rgroup, int rstep, int rindent, String rname);
//	
//		
//	public int rCount();
//	public List<RBoardDto> rList(int nStart, int nEnd);
//	public int articleCount(int curPage);
}
