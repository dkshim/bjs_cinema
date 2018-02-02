<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%
	session.setAttribute("member_id", 1);
%>


<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>MovieInsert</title>
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

<link rel="stylesheet" type="text/css"
	href="/resources/css/switcher.css" media="screen" />

<style>



</style>

</head>
<body class="home">
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<!-- /헤더 -->

		<div id="container">
			<div id="step">
				<div class="step step1">
					<div class="section section-movie">
						<div class="col-head">
							<h3 class="sreader">영화</h3>
						</div>
						<div class="col-body">
							<div class="tabmenu"></div>
							<div class="sortmenu"></div>
						</div>
						<div class="section section-theater">
						<c:forEach items="${list}" var="list">
							<div class="movie">
								${list.movie_name}
							</div>						
						</c:forEach>
						</div>
						<div class="section section-date"></div>
					<div class="section section-time"></div>
				</div>			
			</div>
		</div>
		</div>

					
			<!--end wrapper-->


			<!-- 푸터 -->
			<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			<!-- /푸터 -->


			<script type="text/javascript"
				src="/resources/js/jquery-1.10.2.min.js"></script>
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
			<script id="template" type="text/x-handlebars-template">


<li>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}
  <span class="mailbox-attachment-icon has-img"><br><img src="{{imgsrc}}" alt="Attachment">
</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>

			<script>


</script>
			<!-- Start Style Switcher -->
			<div class="switcher"></div>
			<!-- End Style Switcher -->
</body>
</html>