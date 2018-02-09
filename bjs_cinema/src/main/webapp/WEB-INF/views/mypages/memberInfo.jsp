<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Bjs/MyBJS</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- CSS FILES -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" type="text/css" href="/resources/css/style.css"
	media="screen" data-name="skins">
<link rel="stylesheet" href="/resources/css/layout/wide.css"
	data-name="layout">
<link rel="icon" href="/resources/img/B.PNG">
<link rel="stylesheet" type="text/css"
	href="/resources/css/switcher.css" media="screen" />
<style type="text/css">
.btn-default {
	float: right;
}
.fa-male{
	color: blue;
}
.fa-female{
	color: red;
}
</style>
</head>
<body class="home">
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<!-- /헤더 -->

	<!--start wrapper-->
	<section class="wrapper">
		<section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>회원정보</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="/">홈</a>/</li>
								<li>마이페이지 /</li>
								<li>회원정보</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<div class="container">
			<div class="row sub_content" id="pwdChk">
				<div class="col-lg-5 col-sm-5 col-lg-offset-1">
					<div class="dividerHeading">
						<h4>
							<span>비밀 번호 확인</span>
						</h4>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" class="form-control" value="${memberInfo.member_identify }" readonly="readonly">
						</div>
					</div>
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="fa fa-unlock-alt"></i>
							</span>
							<input type="password" class="form-control" id="memberPwd" placeholder="Password" name="member_pwd">
						</div>
					</div>
					<div class="form-group">
						<button type="submit" id="memberCheck" class="btn btn-default btn-lg button">확인</button>
					</div>
				</div>
			</div>
			
			<form role="form" action="memberModify" method="post">
				<input type='hidden' name='member_id' value="${memberInfo.member_id}">
				<input type='hidden' id='member_phone' name='member_phone' value="${memberInfo.member_phone}">
				<input type='hidden' id='member_email' name='member_email' value="${memberInfo.member_email}">
				<input type='hidden' id='member_ssn' name='member_ssn' value="${memberInfo.member_ssn}">
			</form>
			<!-- 회원정보 수정 -->
			<div class="row sub_content" id="memberModify">
				<div class="col-lg-5 col-sm-5 col-lg-offset-1">
					<div class="dividerHeading">
						<h4>
							<span>회원 정보 변경</span>
						</h4>
					</div>
					
					<div class="row">
						<label>이름</label>
						<label>${memberInfo.member_name }</label>
					</div>
					<div class="row">
						<label>성별</label>
						<c:if test="${memberInfo.member_gender=='M' }">
							<label>남자  <i class="fa fa-male"></i></label>
						</c:if>
						<c:if test="${memberInfo.member_gender=='F' }">
							<label>여자  <i class="fa fa-female"></i></label>
						</c:if>
					</div>
					<div class="row">
						<label>회원등급</label>
						<label></label>
						<c:if test="${memberInfo.member_kind == 'G'}">
							<label>골드<img src="/resources/img/goldImg.jpg"></label>
						</c:if>
						<c:if test="${memberInfo.member_kind=='S' }">
							<label>실버<img src="/resources/img/silverImg.jpg"></label>
						</c:if>
						<c:if test="${memberInfo.member_kind=='N' }">
							<label>일반<img src="/resources/img/nomalImg.jpg"></label>
						</c:if>
					</div>
					<div class="row">
						<label>아이디</label>
						<label>${memberInfo.member_identify }</label>
					</div>
					<div class="row">
						<label>생년월일</label>
						<input id="ssn_y" name="ssn_y" type="text" value="${ssn_y}" size="4px"> -
						<input id="ssn_m" name="ssn_m" type="text" value="${ssn_m}" size="2px"> -
						<input id="ssn_d" name="ssn_d" type="text" value="${ssn_d}" size="2px">
					</div>
					<div class="row">
						<label>휴대폰 번호</label>
							<select title="통신사" id="celphone_carrier" name="celphone_carrier">
								<option value="1" selected="selected">SKT</option>
								<option value="2">KT</option>
								<option value="3">LGU+</option>
								<option value="4">SKT알뜰폰</option>
								<option value="5">KT알뜰폰</option>
								<option value="6">LGU+알뜰폰</option>
								<option value="9">ETC</option>
							</select>
							<select title="통신사번호" id="phone0" name="phone0">
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
							<input id="phone1" name="phone1" type="text" value="${phone1}" size="5px"> -
							<input id="phone2" name="phone2" type="text" value="${phone2}" size="5px">
					</div>
					<div class="row">
						<label>E-Mail</label>
						<input type="text" name="email1" id="email1" value="${email1 }" size="10px">@ 
						<input type="text" name="email2" id="email2" value="${email2 }">
					</div>
					<div class="form-group">
						<button type="reset" id="modiCancel" class="btn btn-warning btn-lg button">취소</button>
						<button type="submit" id="modiOk" class="btn btn-primary btn-lg button">수정완료</button>
					</div>
				</div>
			</div>
			<!-- 회원정보 수정 -->
		</div>
	</section>
	<!--end wrapper-->

	<!-- 푸터 -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- /푸터 -->



	<script type="text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery.easing.1.3.js"></script>
	<script src="/resources/js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.cookie.js"></script>
	<!-- jQuery cookie -->
	<script type="text/javascript" src="/resources/js/styleswitch.js"></script>
	<!-- Style Colors Switcher -->
	<script type="text/javascript"
		src="/resources/js/jquery.smartmenus.min.js"></script>
	<script type="text/javascript"
		src="/resources/js/jquery.smartmenus.bootstrap.min.js"></script>
	<script type="text/javascript" src="/resources/js/jflickrfeed.js"></script>
	<script type="text/javascript"
		src="/resources/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript"
		src="/resources/js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="/resources/js/swipe.js"></script>
	<script type="text/javascript"
		src="/resources/js/jquery-scrolltofixed-min.js"></script>

	<script src="/resources/js/main.js"></script>

	<script type="text/javascript">
		var member_pwd = ${memberInfo.member_pwd};

		
		$(function() {
			$("#memberModify").hide();
			
			$("#memberCheck").on('click', function() {
				if(member_pwd == $("#memberPwd").val()){
					$("#pwdChk").hide();
					$("#memberModify").show("slow");
				}else if($("#memberPwd").val()==''){
					alert("비밀번호를 입력 해주세요.");
				}else {
					alert("비밀번호가 틀렸습니다.")
					$("#memberPwd").val('');
				}
			});
		});
		
		$(function() {


			$("#modiCancel").on('click', function(){
				if(confirm("수정안해?")){
					location.href = "/main/main";
				}
			});
			var formObj = $("form[role='form']");
			$("#modiOk").on('click', function(){
				var member_email = $("#email1").val()+"@"+$("#email2").val();
				var member_phone = $("#phone0").val()+"-"+$("#phone1").val()+"-"+$("#phone2").val();
				var member_ssn = $("#ssn_y").val()+"-"+$("#ssn_m").val()+"-"+$("#ssn_d").val();
				if(confirm("  **수정 내용이 맞나요?**\n"
							+"회원 이메일 : "+member_email+"\n"
							+"회원 폰번 : "+member_phone+"\n"
							+"회원 생년월일 : "+member_ssn)){
					$("#member_phone").val(member_phone);
					$("#member_email").val(member_email);
					$("#member_ssn").val(member_ssn);
					formObj.submit();
				}
			});
		});
	</script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>