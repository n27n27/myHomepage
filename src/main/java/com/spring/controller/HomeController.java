package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{
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
}
