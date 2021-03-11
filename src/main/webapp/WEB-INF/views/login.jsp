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
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="./js/indigo.min.js"></script>


</head>
<body>
    <div id="wrap">
        <header class="header cfixed">
            <h1 class="logo"><a href="https://bluen27.tistory.com/">N27</a></h1>
            <nav>
                <ul class="gnb">
                    <li><a href="./index">HOME</a></li>                    
                    <li><a href="#display-section">Who am I</a></li>
                    <li><a href="#work-section">SKILLS</a></li>
                    <li><a href="">BOARD</a></li>
                    <li><a href="./login">LOGIN</a>                    
                </ul>
            </nav>
            <hr class="divider">            
        </header>  
        <section class=login-section>
	        <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                
                <form id="login" action="" class="input-group">
                    <input type="text" class="input-field" placeholder="ID :" required>
                    <input type="password" class="input-field" placeholder="PASSWORD :" required>    
                    <br><br>                
                    <button class="submit">Login</button>
                </form>
                <form id="register" action="" class="input-group">
                    <input type="text" class="input-field" placeholder="ID: " required>
                    <input type="email" class="input-field" placeholder="PASSWORD :" required>
                    <input type="password" class="input-field" placeholder="Email :" required>
                    <br><br>
                    <button class="submit">REGISTER</button>
                </form>
            </div>
       
        </section>
         
        <footer class="footer">
         <hr class="divider">        	
            <p class="copyright">N27</p>
        </footer>
    </div>
    <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
</body>
</html>