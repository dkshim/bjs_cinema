<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title> BJS CINEMA에 오신것을 환영합니다 :) </title>
    <meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/resources/css/layout/wide.css" data-name="layout">
	<link rel="icon" href="/resources/img/B.PNG">

    <link rel="stylesheet" href="/resources/css/fractionslider.css"/>
    <link rel="stylesheet" href="/resources/css/style-fraction.css"/>
    <link rel="stylesheet" href="/resources/css/animate.css"/>
    <link rel="stylesheet" href="/resources/css/login/login.css"/>

    <link rel="stylesheet" type="text/css" href="/resources/css/switcher.css" media="screen" />
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
    	$(document).ready(function(){
    		$("#btnLogin").click(function(){
    			//입력한 값들
    			var member_identify = $("#member_identify").val();
    			var member_pwd = $("#member_pwd").val();
    			
    			if(member_identify==""){
    				alert("아이디를 입력해주세요.");
    				$("#member_identify").focus();
    				return; 
    			}
    			if(member_pwd==""){
    				alert("비밀번호를 입력해주세요.");
    				$("#member_pwd").focus();
    				return; 
    			}
    			
    			document.form1.action="/main/loginCheck";
    			document.form1.submit();

    		});
    	});
    	
    </script>
</head>
<body>

<!-- 헤더 -->
   <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- /헤더 -->

 		 <section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>로그인</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="/main/main">홈</a>/</li>
								<li><b>로그인</b></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
  
  
	<div class="container">
	<div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            <div class="form-box">
                <form action="/main/loginPost" method="post" >
                    <input name="member_identify" type="text" placeholder="아이디를 입력해주세요.">
                    <input name="member_pwd" type="password" placeholder="password">
                    <button class="btn btn-info btn-block login" type="submit" id="btnLogin">Login</button>        

                </form>
            </div>
        </div>
</div>



<!-- 푸터 -->
   <jsp:include page="/WEB-INF/views/include/footer.jsp" />
 <!-- /푸터 -->

<script src="/resources/js/login/login.js"></script>
<script type="text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.easing.1.3.js"></script>
<script src="/resources/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
<script type="text/javascript" src="/resources/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
<script src="/resources/js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="/resources/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="/resources/js/jflickrfeed.js"></script>
<script type="text/javascript" src="/resources/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery-hoverdirection.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.easypiechart.min.js"></script>
<script type="text/javascript" src="/resources/js/swipe.js"></script>
<script type="text/javascript" src="/resources/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="/resources/js/jquery-scrolltofixed-min.js"></script>
<script src="/resources/js/main.js"></script>


</body>
</html>