package com.spring.service;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.dto.BoardDto;
import com.spring.page.BoardPage;

public interface BoardService
{
	public List<BoardDto> list(int curPage);	
	public BoardPage articlePage(int curPage);
	public void board(HttpServletRequest request, Model model, BoardPage page);
}
