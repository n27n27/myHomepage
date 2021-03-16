package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.page.BoardPage;
import com.spring.service.BoardService;

@Controller
public class BoardController
{
	@Autowired
	BoardService board;
	
	@RequestMapping("/board")
	public String board(HttpServletRequest request, Model model, BoardPage page)
	{
		board.board(request, model, page);
		
		return "board";
	}
	
	@RequestMapping("/writeView")
	public String writeView()
	{
		return "writeView";
	}
	
	@RequestMapping("/writeOk")
	public String write(HttpServletRequest request)
	{
		board.write(request);
		return "redirect:board";
	}
	
	@RequestMapping("/contentView")
	public String contentView(HttpServletRequest request, Model model)
	{
		board.contentView(request, model);
		return "contentView";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request)
	{		
		board.delete(request);
		return "redirect:board";
	}
}