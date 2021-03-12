package com.spring.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService
{
	@Autowired
	MemberDao member;
	
	public void register(Map<String, String> map)
	{
		member.register(map);
	}
}
