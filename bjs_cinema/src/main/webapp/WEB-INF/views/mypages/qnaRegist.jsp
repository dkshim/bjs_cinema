<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link rel="icon" href="/resources/img/B.PNG">
<link rel="stylesheet" type="text/css"
	href="/resources/css/switcher.css" media="screen" />
</head>


<style>
.fileDrop {
	width: 80%;
	height: 100px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	margin: auto;
}

.error {
	color: #ff0000;
}
</style>
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
							<h2>1:1 문의</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="/">홈</a>/</li>
								<li>마이페이지 /</li>
								<li>1:1문의</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-6 col-sm-6">
						<form id='registerForm' role="form" method="post" name="registerform">
							<!-- 추후 로그인 추가되면 member_id는 세션값으로 -->
							<div class="form-group">
								<input type="hidden" class="form-control" name="member_id" value="${login.member_id }">
							</div>
							
							<div class="form-group">
								<label>제목 :</label><br>
								<input type="text" class="form-control" name="qna_title" placeholder="제목">
							</div>
							<div class="form-group">
								<label>문의 내용 :</label><br>
								<textarea rows="10" cols="73" class="form-control" name="qna_content" placeholder="문의 내용 작성"></textarea>
							</div>
							<div class="form-group">
								<input type="submit" class="btn btn-default btn-lg button" value="작성 완료">
							</div>
						</form>
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

	<script type="text/javascript" src="/resources/js/upload.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>