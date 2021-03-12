package com.spring.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDao
{
	public void register(Map<String, String> map);
}
