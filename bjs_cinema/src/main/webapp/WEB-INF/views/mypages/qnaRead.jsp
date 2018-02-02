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
<title>Bjs/Qna</title>
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
.layer1 {
	position: absolute;
	padding: 5px;
	filter: alpha(opacity = 50);
	background-color: white;
	border: 2px #000000 solid;
	border-radius: 10px;
	text-align: center;
	width: auto;
	height: auto;
}
			.li_table ul {margin: 0;padding: 0;list-style-type: none;} 
			/* list-style-type 블릿표시 padding: 0; 들여쓰기*/
			.li_table .qnaCol {font-weight: bold;text-align: center;}
			.li_table ul li {text-align: center;display:inline-block;margin: 0;width: 280px;}
			.li_table ul .col {width: 600px;} /* 표 라인 맞추기기 위해*/
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
							<h2>문의내역</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="/">홈</a>/</li>
								<li>마이페이지 /</li>
								<li>문의내역</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>

		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="pricingBlock theme-color-pt">
						<!--  DARK-BLUE PRICE ITEM  -->
							<div class="pricingTable"><!-- BODY BOX-->
								<div class="pricingContent">
									<!-- 추후 로그인 됐을때 나누기 -->
									<!-- <h2 align="center">문의 내역이 존재하지 않습니다.</h2> -->
									<div class="li_table">
										<ul class="qnaCol">
											<li class="col">제목</li>
											<li>문의날짜</li>
											<li>답변상태</li>
										</ul>
										<ul>
											<li class="col">${qnaVO.qna_title}</li>
											<li>
												<fmt:formatDate value="${qnaVO.qna_date}" pattern="yyyy-MM-dd" />
											</li>
											<li>
												<c:choose>
													<c:when test="${qnaVO.qna_state=='I'}">
														<span>처리중</span>
													</c:when>
													<c:when test="${qnaVO.qna_state=='C'}">
														<span>답변완료</span>
													</c:when>
												</c:choose>
											</li>
										</ul>
										<ul>
											<li class="qnaCol">문의내용 :</li>
											<li class="col">${qnaVO.qna_content }</li>
										</ul>
									</div>
								<!-- BUTTON BOX -->
								<!-- 추후 관리자로그인일때 답변달기 버튼활성화로 수정 -->
									<!-- <a href="#" class="btn btn-default">답변달기</a> -->
								<!-- BUTTON BOX END-->
								</div><!-- /  CONTENT BOX-->
							</div><!--/ BODY BOX-->

						<!--  DARK-BLUE PRICE ITEM  -->
					</div>
				</div>
			</div>
		</section>
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

	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>