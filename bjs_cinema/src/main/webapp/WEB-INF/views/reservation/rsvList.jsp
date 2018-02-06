<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- 
<%
	session.setAttribute("member_id", 1);
%>
 --%>

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

body{
  margin-top: 100px;
  font-family: 'Trebuchet MS', serif;
  line-height: 1.6
} 
 
 
ul.tabs{
  margin: 0px;
  padding: 0px;
  list-style: none;
}
ul.tabs li{
  background: none;
  color: #222;
  display: inline-block;
  padding: 10px 15px;
  cursor: pointer;
}
 
ul.tabs li.current{
  background: #ededed;
  color: #222;
}
 
.tab-content{
  display: none;
  background: #ededed;
  padding: 15px;
}
 
.tab-content.current{
  display: inherit;
}

#ticket .section-theater .col-body .favorite_cgv {
    position: relative;
    float: left;
    width: 225px;
    height: 91px;
    margin-left: 20px;
    margin-top: 19px;
    border-top: 2px solid #d4d3c9;
    border-bottom: 2px solid #d4d3c9;
}

#ticket .section-theater .col-body .favorite_cgv p.tit {
    position: absolute;
    top: 16px;
    left: 9px;
    color: #ae5d1b;
    font-size: 12px;
    font-weight: bold;
    letter-spacing: -0.1em;
}

#ticket .section-theater .col-body .favorite_cgv p.setting {
    position: absolute;
    top: 50px;
    left: 8px;
    font-size: 11px;
    letter-spacing: -0.1em;
}

#ticket .section-theater .col-body .favorite_cgv ul.theaters {
    position: absolute;
    width: 131px;
    top: 15px;
    left: 93px;
    overflow: hidden;
}

#ticket .section-theater .col-body .favorite_cgv .nolist {
    display: none;
    position: absolute;
    width: 131px;
    top: 32px;
    left: 93px;
    overflow: hidden;
    text-align: center;
}

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
							<div class="movie">
								<ul class="tabs">
									<li class="tab-link current" data-tab="tab-1">전체</li>
									<li class="tab-link" data-tab="tab-2">아트하우스</li>
									<li class="tab-link" data-tab="tab-3">특별관</li>
								</ul>
							</div>
							<div id="tab-1" class="tab-content current">
									<ul class="tabs">
										<li class="tab-link current" data-tab="tab-1">예매율순</li>
										<li class="tab-link" data-tab="tab-2">가나다순</li>
									</ul>
							</div>
						</div>
						
					<div class="section section-theater">
						<div class="col-head">
							<h3 class="sreader">극장</h3>
							<div class="favorite_cgv" id="favorite_cgv">
								<p class="tit">자주가는 CGV</p>
								<p class="setting" style=""><a href="#" onclick="favoriteCGVSettingClickListener();return false;" class="btn_setting">설정 &gt;</a></p>
								<ul class="theaters"></ul>
								<div class="nolist" style="display: block;">자주가는 CGV를<br>등록해주세요</div>
							</div>
							<div class="theater">
								<ul class="tabs">
									<li class="tab-link current" data-tab="tab-1">전체</li>
									<li class="tab-link" data-tab="tab-2">아트하우스</li>
									<li class="tab-link" data-tab="tab-3">특별관</li>
								</ul>
							<div id="tab-2" class="tab-content">
								<ul>
							 	 <c:forEach items="${cinemaList}" var="list">
							 	 		<li>${list.cinema_region }</li>
								</c:forEach>  
								</ul>
							</div>	
							<div id="tab-3" class="tab-content">
							
							</div>		
							</div>						
						</div>
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

<script>

$(document).ready(function(){
	   
	  $('ul.tabs li').click(function(){
	    var tab_id = $(this).attr('data-tab');
	 
	    $('ul.tabs li').removeClass('current');
	    $('.tab-content').removeClass('current');
	 
	    $(this).addClass('current');
	    $("#"+tab_id).addClass('current');
	  })
	 
	})
	
	
/*  $(function(){
	
    $(".tab-link current").click(function () {
 	var pay_date = $("#pay_date option:selected").val();
	var obj = new Object();
	obj.pay_date = pay_date; 

	var html = "";

	$.ajax({
		type : "POST",
		url : "/reservation/movieList",
		dataType : "json",
		data : obj,			
		success : function(data) {
			
			console.log("씨빨!!!");
			
		
			html +="</table>";
			$('#month').append(html);
			
			 
			}
  		  });
		}) */




</script>
			<!-- Start Style Switcher -->
			<div class="switcher"></div>
			<!-- End Style Switcher -->
</body>
</html>