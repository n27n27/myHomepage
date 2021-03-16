package com.spring.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.spring.dto.BoardDto;

@Mapper
public interface BoardDao
{
	public List<BoardDto> list(int start, int end);	
	public int articleCount();
	public void write(Map<String, String> map);
	public BoardDto contentView(@Param("bnum")String bnum);
	public void upHit(String bnum);
	public void delete(@Param("bnum")String bnum);
	
}
