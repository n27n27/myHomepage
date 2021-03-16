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
<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
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
	
	input{		
		font-size:18px;				
		background-color:transparent;  
		border:0px transparent solid;	
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
	
	table{
		border-collapse: collapse;
		text-align:left;		
		width : 90%;		
		margin : auto;				
	}			
		
	td, th{
		border-bottom: 2px solid #eee;
		height:35px;	
		padding:1%;
		vertical-align:middle;
	}
	
	.page{
		text-align:center;
		margin: 0 auto;
	}
	
	.right{
		witdh:50px;
		height:20px;
		float:right;
		margin: 3px;
		padding: 3px;
		border: 1px solid #3f51b5;
		 
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
		
		.right{
			margin: 10px;
			padding: 10px;
			border: 1px solid #3f51b5; 
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
        <section class=middle>
        	<form action="./writeOk" id="reg_frm" method="post"> 
				<table class="table">
					<tr>
		      			<th scope="row" width ="10%">작성자</th>
		      			<td><input type="text" name="bname" value="${dto.id}" readonly></td>		      			
		      		</tr>		      		
		    		
		    		<tr>
		      			<th scope="row" width ="10%">제목</th>
		      			<td><input type="text" id="btitle" name="btitle"></td>
		      		</tr>
		      			      				      	
			    	<tr>
		    			<th colspan=2 scope="row" width ="100%">내용</th>
		      			     
		    		</tr>
		    		<tr>
		    			<td colspan=2>
		      				<textarea name="bcontent" id="bcontent" rows="10" style="width:100%"></textarea>		      				
		      				<script>								
								var ckeditor_config = {		
								resize_enaleb : false,		
								enterMode : CKEDITOR.ENTER_BR,		
								shiftEnterMode : CKEDITOR.ENTER_P,		
								filebrowserUploadUrl : "${pageContext.request.contextPath}/ckUpload"		
								};		
										
								CKEDITOR.replace('bcontent', ckeditor_config);		
							</script>		
		      			</td>
		    		</tr>
		    		<tr>
					<td colspan=2>
						<span class=right><a href=./board>취소</a></span><span class=right><input type="submit" value="글쓰기"/></span>
					</td>	
					</tr>
		    	</table>    			
    		</form>
        </section>
        <footer class="footer">
        	<hr class="divider">        	
            <p class="copyright">N27</p>
        </footer>
    </div>
</body>
</html>