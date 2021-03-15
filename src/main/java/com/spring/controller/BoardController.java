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
	
//	@RequestMapping("/guest/rBoard")
//	public String rList(HttpServletRequest request, Model model, RPageDto pdto)
//	{
//		int nPage = 1;
//		try
//		{
//			String sPage = request.getParameter("page");
//			nPage = Integer.parseInt(sPage);
//		}
//		catch(Exception e)
//		{}		
//		
//		pdto = rbbs.articlePage(nPage);
//		
//		System.out.println(pdto);
//		model.addAttribute("page", pdto);
//		nPage = pdto.getCurPage();
//		
//		HttpSession session = null;
//		session = request.getSession();
//		session.setAttribute("cpage", nPage);
//				
//		model.addAttribute("dto", mag.requestStyle());
//		model.addAttribute("ncontents", rbbs.nList());
//		model.addAttribute("contents", rbbs.list(nPage));		
//		
//		return "guest/rList";
//	}
}
