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
<link rel="icon" href="/resources/img/gold.jpg">
<link rel="stylesheet" type="text/css"
	href="/resources/css/switcher.css" media="screen" />
<style type="text/css">
	.btn-default {
		float: right;
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
        <div class="row sub_content">
            <div class="col-lg-5 col-sm-5 col-lg-offset-1">
                <div class="dividerHeading">
                    <h4><span>회원 정보 변경</span></h4>
                </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" value="${memberInfo.member_identify }" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-unlock-alt"></i></span>
                            <input type="password" class="form-control" id="memberPwd" placeholder="Password" name="member_pwd">
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" id="memberCheck" class="btn btn-default btn-lg button">확인</button>
                    </div>
            </div>
        </div>
        <div class="section __half">
        <h3 class="subject __underline">
          <em>회원정보입력</em>
        </h3>
        <div class="row">
          <div class="col-md">
            <label>이름</label>
          </div>
          <div class="col-md">
            <div class="ui-input __disable">
              <label>${memberInfo.member_name }</label>
            </div>
          </div>
        </div>
        
        
        <div class="row">
          <div class="col-md">
            <label>아이디</label>
          </div>
          <div class="col-md">
            <div class="ui-input __disable">
              <label>${memberInfo.member_identify }</label>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md">
            <label>휴대폰 번호</label>
          </div>
           <div class="col-md">
        	<div class="form-wrap __mobile">
        		<select title="통신사" id="celphone_carrier" name="celphone_carrier" class="ui-select"> 															
					
						<option value="1" selected="selected">SKT</option>
					
						<option value="2">KT</option>
					
						<option value="3">LGU+</option>
					
						<option value="4">SKT알뜰폰</option>
					
						<option value="5">KT알뜰폰</option>
					
						<option value="6">LGU+알뜰폰</option>
					
						<option value="9">ETC</option>
																				
				</select>
              <select title="통신사번호" id="celphone_no1" name="celphone_no1" class="ui-select">
				
					<option value="010" selected="selected">010</option>
				
					<option value="011">011</option>
				
					<option value="016">016</option>
				
					<option value="017">017</option>
				
					<option value="018">018</option>
				
					<option value="019">019</option>
																	
			</select>
              <div class="ui-input">
                <input id="celphone_no2" name="celphone_no2" type="tel" value="${memberInfo.member_phone }" >
              </div>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md">
            <label for="user-id">E-Mail</label>
          </div>
          <div class="col-md">
         	  <div class="form-wrap __normal">
	            <div class="ui-input">
	              <input type="text" name="email" id="email" value="${memberInfo.member_email }" >
          	    </div>
             </div>
           </div>
         </div>
      </div>
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
			$("#memberCheck").on('click', function() {
				if(member_pwd == $("#memberPwd").val()){
					$.ajax()
				}else {
					alert("비밀번호를 다시 확인해주세요.");
					$("#memberPwd").val('');
				}
			});
		});
	</script>

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>