package com.spring.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.spring.dto.MemberDto;

@Mapper
public interface MemberDao
{
	public void register(Map<String, String> map);
	public MemberDto loginCheck(Map<String, String> map); 
}
