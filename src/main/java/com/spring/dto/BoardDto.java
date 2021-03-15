package com.spring.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardDto
{	
	int bnum;
	String btitle;
	String bcontent;
	Timestamp bdate;
	String bid;
	int bhit;
}
