package com.spring.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.MemberDao;
import com.spring.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService
{
	@Autowired
	MemberDao member;
	
	public void register(HttpServletRequest request)
	{
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		map.put("email", email);
		member.register(map);
	}

	@Override
	public MemberDto loginCheck(HttpServletRequest request)
	{
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);		
		return member.loginCheck(map);
	}
	
	
}
