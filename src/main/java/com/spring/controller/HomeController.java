package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dto.MemberDto;
import com.spring.service.MemberServiceImpl;

@Controller
public class HomeController
{
	@Autowired
	MemberServiceImpl member;
	
	@RequestMapping("/")
	public String indexPage()
	{
		return "index";
	}
	
	@RequestMapping("/index")
	public String indexPage1()
	{
		return "index";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@RequestMapping("/loginCheck")
	public String loginCheck(HttpServletRequest request, MemberDto dto)
	{
		dto = member.loginCheck(request);
		if(dto == null)
			return "login";
		else
		{
			HttpSession session = null;
			session = request.getSession();
			session.setAttribute("dto", dto);			
			return "index";
		}		
	}

	@RequestMapping("/register")
	public String register(HttpServletRequest request)
	{
		member.register(request);
		return "index";
	}	
	
}
