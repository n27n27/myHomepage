package com.spring.page;

import org.springframework.stereotype.Repository;

import lombok.Data;

@Repository
@Data
public class BoardPage
{
	int totalCount;
	int listCount;
	int totalPage;
	int curPage;
	int pageCount;
	int startPage;
	int endPage;
}
