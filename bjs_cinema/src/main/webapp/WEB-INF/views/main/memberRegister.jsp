<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <link rel="stylesheet" type="text/css" href="/resources/css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
  `		.button1{
  			margin-left: 100px;
 		}
    </style>
    
</head>
<body>
	<!-- 헤더 -->
   <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- /헤더 -->
  
  	<section class="wrapper">
 		 <section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>회원가입</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="/main/main">홈</a>/</li>
								<li><b>회원가입</b></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section> 

	<div class="container">
		<form role="form" method="post">
			<table class="table table-bordered table-hover" style="text-align: center; border:1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3"><img src="/resources/img/base.jpg" width="100%" height="100px"><h4 align="center">회원 등록 양식</h4></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width : 110px;"><h5>아이디(*)</h5>
					<td><input class="form-control" type="text" id="member_identify" name="member_identify" placeholder="User Id" ></td>
					<td style="width:110px;"><button class="btn btn-default" onclick="registerCheckFunction()" type="button">중복체크</button>
					</td>
				</tr> 
				<tr>
					<td style="width : 110px;"><h5>비밀번호 </h5></td>
					<td colspan="2">
					<input class="form-control" type="password" id="member_pwd" name="member_pwd" placeholder="PassWord"></td> 
				</tr>
				<!-- <tr>
					<td style="width : 110px;"><h5>비밀번호 확인</h5></td>
					<td colspan="2">
					<input class="form-control" type="password" id="member_pwd2" name="member_pwd2" maxLength="30"></td>
				</tr> -->
				<tr>
					<td style="width : 110px;"><h5>이름</h5></td>
					<td colspan="2">
					<input class="form-control" type="text" id="member_name" name="member_name" placeholder="Name"></td>
				</tr>
				<tr>
					<td style="width : 110px;"><h5>이메일</h5></td>
					<td colspan="2">
					<input class="form-control" type="text" id="member_email" name="member_email" placeholder="E-mail"></td>
				</tr>
				 <tr>
					<td style="width : 110px;"><h5>생년월일</h5></td>
					<td colspan="2">
					<input class="form-control" type="text" id="member_ssn" name="member_ssn" placeholder="ex)  2018-01-01"></td>
				</tr>
				<tr>
					<td style="width : 110px;"><h5>핸드폰번호</h5></td>
					<td colspan="2">
					<input class="form-control" type="text" id="member_phone" name="member_phone" placeholder="ex)  010-1234-5678"></td>
				</tr>
				<tr>
					<td style="width : 110px;"><h5>성별</h5></td>
					<td colspan="2">
						<div class="form-group" style="text-align:center; margin:0; auto;">
							<div class="btn-group" data-toggle="buttons">
							
							<label class="btn btn-primary active">
								<input type="radio" name="member_gender" autocomplete="off" value="M">남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="member_gender", autocomplete="off" value="F"> 여자
							</label>
							</div>
						</div>
				</tr>
				<tr>
					<td colspan="3" align="right">
					
						<input class="btn btn-primary" type="reset" value="취소">&nbsp; &nbsp;
						<input class="btn btn-primary" type="submit" value="회원가입" >
						
					
					</td>
					
			</tbody>
		
		
			</table>
			
		</form>
	
	</div>
</section>





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