package com.spring.service;

import javax.servlet.http.HttpServletRequest;

import com.spring.dto.MemberDto;

public interface MemberService
{
	public void register(HttpServletRequest request);
	public MemberDto loginCheck(HttpServletRequest request);
}
