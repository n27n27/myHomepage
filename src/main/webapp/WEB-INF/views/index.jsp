<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>N27</title>
<link rel="stylesheet" type="text/css" href="./css/reset.css">
<link rel="stylesheet" type="text/css" href="./css/default.css">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="./js/indigo.min.js"></script>
</head>
<body>
    <div id="wrap">
        <header class="header cfixed">
            <h1 class="logo"><a href="./index">N27</a></h1>
            <nav>
                <ul class="gnb">
                    <li><a href="./index">HOME</a></li>                    
                    <li><a href="#display-section">Who am I</a></li>
                    <li><a href="#work-section">SKILLS</a></li>
                    <li><a href="">BOARD</a></li>
                    <li><a href="./login">LOGIN</a>                    
                </ul>
            </nav>
            <span class="menu-toggle-btn">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </span>
        </header>
        <article class="slider">
            <img src="./images/slide01.jpg" alt="">
        </article>
        <section class="content">
            <section id="display-section" class="display-section">
                <div class="container">
                    <h2 class="sec-tit">Who am I</h2>
                    <p class="desc">국비교육학원에서 교육을 받고 개발자로 취업을 희망하는 사람입니다.<br> 반응형웹을 공부하면서 간단한 홈페이지를 구축해봤습니다. <br> 스프링을 활용하여 Login, 게시판을 만들어봤습니다.</p>
                </div>
            </section>
            <section class="promotion-section">
                <div class="container">
                    <ul class="promo-list">
                        <li>
                            <a href="#">
                                <img src="./images/promo01.png" alt="">
                                <h3>HOME</h3>
                                <p>반응형웹을 적용하여 간단한 기능을 추가해봤습니다. Login과 게시판 기능을 구축하였습니다.</p>
                            </a>
                        </li>
                        <li>
                            <a href="#display-section">
                                <img src="./images/promo02.png" alt="">
                                <h3>Who am I</h3>
                                <p> 40세 늦은 나이에 게다가 비전공자.. <br>하지만 개발자 전직을 희망하고 있습니다.</p>
                            </a>
                        </li>
                        <li>
                            <a href="#work-section">
                                <img src="./images/promo03.png" alt="">
                                <h3>SKILLS</h3>
                                <p>Java, python, JSP, Spring <br> Aws, Linux</p>
                            </a>
                        </li>
                        <li>
                            <a href="https://bluen27.tistory.com/">
                                <img src="./images/promo04.png" alt="">
                                <h3>BLOG</h3>
                                <p>개발 공부한 것들 정리하려는 목적인데<br>아직 내용은 별로 없습니다.</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            <hr class="divider">
            <section id="work-section" class="work-section cfixed">
                <h2 class="sec-tit">SKILLS</h2>
                <ul class="work-list">
                    <li>
                    	<div class="info">
                    		<h3>Java</h3>
                    	</div>
                    	<img src="./images/java.png" alt="" />                      
                    </li>
                    <li>
                    	<div class="info">
                    		<h3>Spring</h3>
                    	</div>
                    	<img src="./images/spring.png" alt="" />                        
                    </li>
                    <li>
                    	<div class="info">
                    		<h3>HTML5</h3>
                    	</div>
                    	<img src="./images/html5.png" alt="" />                        
                    </li>
                    <li>
                    	<div class="info">
                    		<h3>CSS3</h3>
                    	</div>
                    	<img src="./images/css3.png" alt="" />                        
                    </li>
                    <li>
                    	<div class="info">
                    		<h3>Javascript</h3>
                    	</div>
                    	<img src="./images/js.png" alt="" />                        
                    </li>
                    <li>
                    	<div class="info">
                    		<h3>jQuery</h3>
                    	</div>
                    	<img src="./images/jQuery.png" alt="" />                        
                    </li>
                    <li>
                    	<div class="info">
                    		<h3>Linux</h3>
                    	</div>
                    	<img src="./images/linux.png" alt="" />                        
                    </li>
                    <li>
                    	<div class="info">
                    		<h3>Python</h3>
                    	</div>
                    	<img src="./images/python.png" alt="" />                        
                    </li>
                </ul>
            </section>
            <hr class="m-divider">
            <section class="blog-section">
                <div class="container">
                    <h2 class="sec-tit">BLOG</h2>
                    <ul class="blog-list">
                        <li>
                            <a href="https://bluen27.tistory.com/3"><img src="./images/blog01.png" alt="">
                            	<time datetime="2021-01-18">Jan 18, 2021</time>
                            	<h3>AWS 가입 및 프리티어 이용</h3>
                            </a>
                        </li>
                        <li>
                            <a href="https://bluen27.tistory.com/5"><img src="./images/blog02.png" alt="">
                            	<time datetime="2021-01-23">Jan 23, 2021</time>
                            	<h3>spring legacy project 없을때 Add-On 설치</h3>
                            </a>
                        </li>
                        <li>
                            <a href="https://bluen27.tistory.com/6"><img src="./images/blog03.png" alt="">
                            	<time datetime="2021-01-27">Jan 27, 2021</time>
                            	<h3>class not found exception</h3>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            
        </section>
        <footer class="footer">
        	<div id="daumRoughmapContainer1615273436953" class="root_daum_roughmap root_daum_roughmap_landing" style="width:90%; margin: 0 auto" ></div>
        	<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
        	<script charset="UTF-8">
	        	new daum.roughmap.Lander({
					"timestamp" : "1615273436953",
					"key" : "24r84",
					
					"mapHeight" : "360"
				}).render();
			</script>
            <p class="copyright">N27</p>
        </footer>
    </div>
</body>
</html>