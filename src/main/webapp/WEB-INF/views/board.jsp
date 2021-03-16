<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.Timestamp"%>     
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>N27</title>
<link rel="stylesheet" type="text/css" href="./css/reset.css"> 
<script src="http://code.jquery.com/jquery.js"></script>
<script src="./js/indigo.min.js"></script>
<style>
	/* 모바일용 CSS */
	/* 기본 CSS */
	.cfixed:after{
		display:block;
		content:"";
		clear:both;
	}
	
	.divider{
		width:90%;
		max-width:1132px;
		margin:0 auto;
		margin-top:30px;		
		background:#eee;
	}
	
	/* 헤더 영역 CSS */
	.header{
		position:relative;
		padding:18px 5%;
	}
	    
	.header .logo{
		float:left;	
	}
	    
	.header .logo a{
		font-size:26px;
		color:#3f51b5;
		font-weight:normal;
	}
    
	.header .gnb{
		display:none;
		position:absolute;
		top:100%;
		left:0;
		width:100%;
		background:#3f51b5;
	}
    
	.header .gnb li{
		border-bottom:1px solid #303f9f;
		
	}    
	  
	.header .gnb li a{
		display:block;
		padding:14px 0 14px 5%;
		font-size:14px;
		color:#fff;
	}
    
	.header .menu-toggle-btn{
		float:right;
		width:20px;
		margin-top:4px;
		cursor:pointer;
	}
    
	.header .menu-toggle-btn span{
		display:block;
		width:100%;
		height:2px;
		background:#3f51b5;
	}
    
	.header .menu-toggle-btn span:nth-child(2){
		margin:5px 0;
	}
	/* 미들 영역 CSS*/
	
	.middle{
		width:90%;		
		font-size:80%;
		color:#3f51b5;
		margin: 0 auto;
		height: 90%;	
		
	}	
	
	.right{
		float:right;
	}
	table{
		border-collapse: collapse;
		text-align:left;		
		width : 90%;		
		margin : auto;				
	}			
		
	td{
		border-bottom: 2px solid #eee;
		height:35px;	
		padding:1%;
		vertical-align:middle;
	}
	
	.page{
		text-align:center;
		margin: 0 auto;
	}
	
	/* 푸터 영역 CSS */
	.footer{	
		padding:0px 5%;
	}
	    
	.footer p{
	margin:21px 0;
	color:#3f51b5;
	text-align:center;
	}    

	/* 태블릿용 CSS */
	@media all and (min-width:768px){
	
		/* 기본 CSS */
		.divider{
			margin-top:50px;
		}
			    
		/* 헤더 영역 CSS */
		.header{
			position:static;
			padding:28px 52px;
		}
	    
		.header .gnb{
			display:block !important;
			position:static;
			float:right;
			width:auto;
			margin-top:6px;
			background:none;
		}
		    
		.header .gnb li{
			float:left;
			margin-left:21px;
			border-bottom:0;
		}
		    
		.header .gnb li a{
			padding:0;
			font-size:16px;
			color:#3f51b5;
		}
		    
		.header .menu-toggle-btn{
			display:none !important;
		}
		/* 미들 영역 CSS*/
		.middle{				
			font-size:95%;
		}			    
		/* 푸터 영역 CSS */
			    
		.footer p{
			margin:34px 0;
		}  
	}
    
	/* PC용 CSS */
	@media all and (min-width:1132px){	    
	    
	    td{
	    	height:5px;
	    }
	    
	}
</style>
</head>
<body>

    <div id="wrap">
        <header class="header cfixed">
            <h1 class="logo"><a href="./index">N27</a></h1>
            <nav>
                <ul class="gnb">
                    <li><a href="./index">HOME</a></li>
                    <li><a href="./board">BOARD</a></li>
                    <c:set value="${dto}"  var = "dto" />
                    <li>
                    	<c:choose>
                    	<c:when test="${dto.id != null }">
                    		<a href="#">${dto.id }님</a>
                    	</c:when>
						<c:otherwise>
							<a href="./login">LOGIN</a>
						</c:otherwise>
						</c:choose>
                    </li>                                                            
                </ul>
            </nav>
            <span class="menu-toggle-btn">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </span>
            <hr class="divider">
        </header>
        <div class="middle">
        	<table>
	 			<tr>
	 				<th width=15%>번호</th>
					<th width=40%>제목</th>
					<th width=15%>작성자</th>
					<th width=15%>작성일</th>
					<th width=15%>조회수</th>					
				</tr>
				<c:forEach items="${dtos }" var = "dto">
				<c:set var="xxx" value="${dto.bdate }" />
				<tr>
					
				<%
					Timestamp date = null;
					SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
					SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm");
					
					date = (Timestamp)pageContext.getAttribute("xxx");
					Timestamp now = new Timestamp(System.currentTimeMillis());
	
					String day1 = sdf1.format(date);
					String day2 = sdf1.format(now);
					String day3 = null;

					if(day1.equals(day2))
					{
						day3 = sdf2.format(date);
					}
					else
					{
						day3 = sdf1.format(date);
					}
				%>
	 				<td>${dto.bnum }</td>
					<td><a href="./content?bnum=${dto.bnum }">${dto.btitle }</a></td>
					<td>${dto.bid }</td>
					<td>${dto.bdate }</td>
					<td>${dto.bhit}</td>
										
				</tr>
				</c:forEach>				
				<tr class="page">
					<td colspan="5">
					<c:choose>
					<c:when test="${(page.curPage - 1) < 1 }"> [처음] </c:when>
					<c:otherwise><a href="./board?page=1">[처음]</a></c:otherwise>
					</c:choose>
					<c:choose>
					<c:when test="${(page.curPage - 1) < 1 }">[<]</c:when>
					<c:otherwise><a href="./board?page=${page.curPage - 1}">[<]</a></c:otherwise>
					</c:choose>
					<c:forEach var="each" begin="${page.startPage }" end="${page.endPage }" step="1">
					<c:choose>
					<c:when test="${page.curPage == each }"> [${each}] </c:when>
					<c:otherwise><a href="./board?page=${each}">[${each}]</a></c:otherwise>
					</c:choose>							
					</c:forEach>
					<c:choose>
					<c:when test="${(page.curPage + 1) > page.totalPage}"> [>] </c:when>
					<c:otherwise><a href="./board?page=${page.curPage + 1 }">[>]</a></c:otherwise>
					</c:choose>
					<c:choose>
					<c:when test="${page.curPage == page.totalPage}"> [끝] </c:when>
					<c:otherwise><a href="./board?page=${page.totalPage}">[끝]</a></c:otherwise>
					</c:choose>
					</td>
				</tr>
				<tr>
					<td colspan=5>
					<span class=right><a href=./write>글쓰기</a></span></td>	
				</tr>
			</table>			
        </div>
        <footer class="footer">
        	<hr class="divider">        	
            <p class="copyright">N27</p>
        </footer>
    </div>
</body>
</html>