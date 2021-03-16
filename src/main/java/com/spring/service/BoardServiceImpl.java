package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.dao.BoardDao;
import com.spring.dto.BoardDto;
import com.spring.page.BoardPage;

@Service
public class BoardServiceImpl implements BoardService
{
	@Autowired
	BoardDao board;
	
	@Autowired
	BoardPage page;
	
	int listCount = 14;
	int pageCount = 10;
	
	public void board(HttpServletRequest request, Model model, BoardPage page)
	{			
		int nPage = 1;
		try
		{
			String sPage = request.getParameter("page");
			nPage = Integer.parseInt(sPage);
		}
		catch(Exception e)
		{}		
		
		page = articlePage(nPage);
				
		model.addAttribute("page", page);
		nPage = page.getCurPage();
		
		HttpSession session = null;
		session = request.getSession();
		session.setAttribute("cpage", nPage);
				
		model.addAttribute("dtos", list(nPage));
			
	}
	
	@Override
	public List<BoardDto> list(int curPage)
	{	
		int start = (curPage - 1) * listCount + 1;
		int end = (curPage - 1) * listCount + listCount;		
		return board.list(start, end);
	}

	@Override
	public BoardPage articlePage(int curPage)
	{	
		
		int totalCount = board.articleCount();
		
		int totalPage = totalCount / listCount;
		if(totalCount % listCount > 0)
			totalPage ++;
		
		int myCurPage = curPage;
		if(myCurPage > totalPage)
			myCurPage = totalPage;
		if(myCurPage < 1)
			myCurPage = 1;
		
		int startPage = ((myCurPage - 1) / pageCount) * pageCount + 1;
		
		int endPage = startPage + pageCount - 1;
		if(endPage > totalPage)
			endPage = totalPage;
		 
		page.setTotalCount(totalCount);
		
		page.setListCount(listCount);
		page.setTotalPage(totalPage);
		page.setCurPage(curPage);
		page.setPageCount(pageCount);
		page.setStartPage(startPage);
		page.setEndPage(endPage);
		
		return page;		
	}

	@Override
	public void write(HttpServletRequest request)
	{
		String bname = request.getParameter("bname");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
				
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("bname", bname);
		map.put("btitle", btitle);
		map.put("bcontent", bcontent);
		
		board.write(map);		
	}

	@Override
	public void contentView(HttpServletRequest request, Model model)
	{
		String bnum = request.getParameter("bnum");
		board.upHit(bnum);		
		model.addAttribute("bdto", board.contentView(bnum));
	}

	@Override
	public void delete(HttpServletRequest request)
	{
		String bnum = request.getParameter("bnum");		
		board.delete(bnum);		
	}
	
}
