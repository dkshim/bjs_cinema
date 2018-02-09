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
	
<link rel="icon" href="/resources/img/B.PNG">	

<style>

/* body{
  margin-top: 100px;
  font-family: 'Trebuchet MS', serif;
  line-height: 1.6
}  */
 
 
ul.tabs{
  margin: 0px;
  padding: 0px;
  list-style: none;
}
ul.tabs li{
  color: #222;
  display: inline-block;
  padding: 10px 15px;
  cursor: pointer;
}
 
ul.tabs li.current{
  color: #222;
}
 
.tab-content{
  display: none;
  padding: 15px;
}
 
.tab-content.current{
  display: inherit;
}

/* .section section-movie {
	position: absolute;
} */

.section section-theater {
    position: relative;
/*     margin-left: 100px; */
}

.tnb_area {
    width: 100%;
    height: 128px;
}

.tnb_container {
    position: fixed;
    z-index: 10000;
    left: 0px;
    bottom: 0;
    width: 100%;
    min-width: 996px;
    height: 128px;
    background-color: #1d1d1c;
    top: 659px;
    bottom: auto;
}

.tnb_container .tnb_reset_btn {
    position: absolute;
    top: -25px;
    left: 0;
    width: 100%;
    height: 25px;
}

.tnb_container .tnb_reset_btn a {
    position: absolute;
    top: 10000px;
    left: 0;
    width: 100%;
    height: 25px;
    display: block;
    line-height: 25px;
    text-align: center;
    font-weight: bold;
    color: #333;
    text-decoration: none;
}

/*  a:link, a:active {
    text-decoration: none;
}

a {
    text-decoration: none;
    text-overflow: ellipsis;
    -o-text-overflow: ellipsis;
    color: #333;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}  */

.tnb {
    margin: 0 auto;
    width: 996px;
    height: 108px;
    padding: 10px 0;
    position: relative;
}

.tnb .info.movie {
    width: 210px;
}

.tnb .info {
    float: left;
    height: 108px;
    padding-right: 2px;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/split.png) no-repeat right;
    position: relative;
    color: #cccccc;
    font-size: 12px;
}

.tnb .info.movie .movie_poster {
    float: left;
    width: 74px;
    height: 108px;
    line-height: 108px;
    margin-right: 11px;
    overflow: hidden;
}

.tnb .info {
    float: left;
    height: 108px;
    padding-right: 2px;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/split.png) no-repeat right;
    position: relative;
    color: #cccccc;
    font-size: 12px;
}

.tnb .info.movie .row.movie_title {
    margin-top: 14px;
    display: none;
}

.tnb .info.movie .row {
    float: right;
}

.tnb .info .row.colspan2 {
    height: 40px;
    overflow: hidden;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.movie .row .data {
    width: 125px;
    max-height: 40px;
}

.tnb .info .row .data.letter-spacing-min {
    letter-spacing: -0.1em;
}

.tnb .info .row .data.ellipsis-line2 {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: normal;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    word-wrap: break-word;
}

.tnb .info .row .data {
    float: right;
    font-weight: bold;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info {
    float: left;
    height: 108px;
    padding-right: 2px;
    position: relative;
    color: #cccccc;
    font-size: 12px;
}

.tnb .info.movie .row {
    float: right;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info {
    float: left;
    height: 108px;
    padding-right: 2px;
    position: relative;
    color: #cccccc;
    font-size: 12px;
}

.tnb .info.movie .row .data {
    width: 125px;
    max-height: 40px;
}

.tnb .info .row .data.ellipsis-line1 {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}

.tnb .info .row .data {
    float: right;
    font-weight: bold;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.movie .row {
    float: right;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info {
    float: left;
    height: 108px;
    padding-right: 2px;
    position: relative;
    color: #cccccc;
    font-size: 12px;
}

.tnb .info.theater {
    width: 185px;
}

.tnb .info {
    float: left;
    height: 108px;
    padding-right: 2px;
    position: relative;
    color: #cccccc;
    font-size: 12px;
}

.tnb .info .row:first-child {
    margin-top: 14px;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.theater .row .data {
    width: 135px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}

.tnb .info .row .data.letter-spacing-min {
    letter-spacing: -0.1em;
}

.tnb .info .row .data.ellipsis-line1 {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}

.tnb .info .row .data {
    float: right;
    font-weight: bold;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.theater .row .header {
    width: 40px;
    padding-left: 10px;
}

.tnb .info .row .header {
    float: left;
    padding-left: 10px;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.theater .row .header {
    width: 40px;
    padding-left: 10px;
}

.tnb .info .row .header {
    float: left;
    padding-left: 10px;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.theater .row .data {
    width: 135px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}

.tnb .info .row .data {
    float: right;
    font-weight: bold;
}

.tnb .info .row {
    height: 20px;
    line-height: 20px;
}

.tnb .info.theater .row .header {
    width: 40px;
    padding-left: 10px;
}

.tnb .info .row .header {
    float: left;
    padding-left: 10px;
}

.tnb .info.theater .row .data {
    width: 135px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}

.tnb .info .row .data {
    float: right;
    font-weight: bold;
}

.tnb .info.theater .placeholder {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background: url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/tnb/tnb_steps.png) no-repeat 50% -68px;
}

.col-body {
	background-color:#FBF5EF;
}

.col-head {
	background-color:#2E2E2E;
	text-align: center;
}


h3 {
	color: #D8D8D8;
}




</style>

</head>
<body class="home">
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<!-- /헤더 -->

	 <section class="page_head">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="page_title">
                            <h2>CGV</h2>
                        </div>
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="index.html">영화</a>/</li>
                                <li>무비차트</li> / <li>무비차트</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>


	<!-- 메인 -->
	<div class="steps">
		 
		<!-- Step1 -->
		<div class="row sub_content" style="height: 595px; display: block;">
			<div class="col-lg-3 col-md-3 col-sm-3" >		
				<div class="col-head">
						<h3 class="sreader">영화</h3>
				</div>
				<div class="col-body">
					<div class="movie">
						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">전체</li>
							<li class="tab-link" data-tab="tab-2">아트하우스</li>
							<li class="tab-link" data-tab="tab-3">특별관</li>
						</ul>
					</div>
					<div class="movie-select">
						<div id="tab-1" class="tab-content current">
							<ul class="tabs">
								<li class="tab-link current" data-tab="tab-1">예매율순</li>
								<li class="tab-link" data-tab="tab-2">가나다순</li>
							</ul>
							<ul class="select-movie">
								<c:forEach items="${movieList}" var="list">
										<li><a href="#">${list.movie_name }</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3">
				<div class="col-head">
					<h3 class="sreader">극장</h3>
				</div>
				<div class="col-body" style="height: 560px;">

					<div class="favorite_cgv" id="favorite_cgv">
						<p class="tit">자주가는 CGV</p>
						<p class="setting" style="">
							<a href="#"
								onclick="favoriteCGVSettingClickListener();return false;"
								class="btn_setting">설정 &gt;</a>
						</p>
						<ul class="theaters"></ul>
						<div class="nolist" style="display: block;">
							자주가는 CGV를<br>등록해주세요
						</div>
					</div>
					<div class="theater">
						<ul class="tabs">
							<li class="tab-link current" data-tab="tab-1">전체</li>
							<li class="tab-link" data-tab="tab-2">아트하우스</li>
							<li class="tab-link" data-tab="tab-3">특별관</li>
						</ul>
						<div class="theater-select">
							<div id="tab-1" class="tab-content current">
								<ul class="tabs">
									<li class="tab-link current" data-tab="tab-1">예매율순</li>
									<li class="tab-link" data-tab="tab-2">가나다순</li>
								</ul>
								<div class="select-theater" id="select-theater">
								<ul class="select-theater">
									<%-- <c:forEach items="${cinemaTotal}" var="list">
										<li><a href="#">${list.cinema_region }</a></li>
									</c:forEach> --%>
								</ul>
								</div>
							</div>
						</div>
						<div id="tab-2" class="tab-content"></div>
						<div id="tab-3" class="tab-content"></div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-3 col-sm-3" style="width: 150px;">
				<div class="col-head" id="skip_date_list">
					<h3 class="sreader">날짜</h3>
				</div>
				<div class="col-body" style="height: 560px;">
					<!-- 날짜선택 -->
				</div>
			</div>
		</div>
			<div class="section section-time"></div>
			</div>


		<div class="tnb_area" style="height: 250px;">
				<div class="tnb_container" style="top: 600px; bottom: auto;">
				<div class="tnb_reset_btn"><a href="#" onmousedown="javascript:logClick('옵션/예매다시하기');" onclick="ticketRestart();return false;">예매 다시하기</a></div>
				<div class="tnb step1">
					<!-- btn-left -->
					<a class="btn-left" href="#" onclick="OnTnbLeftClick(); return false;" title="영화선택">이전단계로 이동</a>
					<div class="info movie">
						<span class="movie_poster">
						<%-- <a href="/movie/movieRead?movie_id=${list.movie_id}"><img src="/movie/displayFile?fileName=${list.movie_img}" alt="NO IMAGE" /></a> --%>
						
						<img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80491/80491_185.JPG" alt="영화 포스터" style="display: inline;"></span>
						<div class="row movie_title colspan2" style="display: block;">
							<span class="data letter-spacing-min ellipsis-line2">선택한 영화이름</span>
						</div>
						<div class="row movie_type" style="display: block;">
							<span class="data ellipsis-line1"></span>
						</div>
						<div class="row movie_rating" style="display: block;">
							<span class="data" title=""></span>
						</div>
						<div class="placeholder" title="영화선택" style="display: none;"></div>
					</div>
					<div class="info theater">
						<div class="row name" style="display: block;">
							<span class="header">극장</span>
							<span class="data letter-spacing-min ellipsis-line1"><a href="http://www.cgv.co.kr/theaters/?theaterCode=0232" target="_blank" onmousedown="javascript:logClick('SUMMARY/극장상세보기');" title="CGV 구리">CGV 구리 &gt; </a></span>
						</div>
						<div class="row date" style="display: block;">
							<span class="header">일시</span>
							<span class="data"></span>
						</div>
						<div class="row screen" style="display: block;">
							<span class="header">상영관</span>
							<span class="data"></span>
						</div>
						<div class="row number" style="display: block;">
							<span class="header">인원</span>
							<span class="data"></span>
						</div>
						<div class="placeholder" title="극장선택" style="display: none;"></div>
					</div>
					<div class="info seat">
						<div class="row seat_name">
							<span class="header">좌석명</span>
							<span class="data">일반석</span>
						</div>
						<div class="row seat_no colspan3">
							<span class="header">좌석번호</span>
							<span class="data ellipsis-line3"></span>
						</div>
						<div class="placeholder" title="좌석선택"></div>
					</div>
					<div class="info payment-ticket">
						<div class="row payment-adult">
							<span class="header">일반</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-youth">
							<span class="header">청소년</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-child">
							<span class="header">어린이</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>						
						<div class="row payment-special">
							<span class="header">우대</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-final">
							<span class="header">총금액</span>
							<span class="data"><span class="price">0</span><span class="won">원</span></span>
						</div>
					</div>
					<div class="info path">
						<div class="row colspan4">
							<span class="path-step2" title="좌석선택">&nbsp;</span>
							<span class="path-step3" title="결제">&nbsp;</span>
						</div>
					</div>
					<!-- btn-right -->
					<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
					<a class="btn-right" id="tnb_step_btn_right" href="#" onclick="OnTnbRightClick(); return false;" title="좌석선택">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
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
	
	
	$('.select-movie').on("click", "li", function(){
		var select_movie = $(this).children().text();
		console.log(select_movie);
		
		$.ajax({
			type : "POST",
			url : "/reservation/moviePoster",
			dataType : "json",
			data : obj,
			success : function(data){
			}
		
		})
	})
	
	
  	$(window).load(function(){
		
		$.ajax({
			type : "POST",
			url : "/reservation/theaterList",
			dataType : "json",
			timeout : 10000,
			success : function(data){
					console.log(data);
					var html = "";
					
					$('#select-theater').empty();
					html += "<div>";
					for(var i=1; i<=8; i++){
						html += data
						if(i>0){
							html += " \ </ul>"
						} else {
							html += " \ </ul>"
						}
					}
					
					html +="</div>";
					$('#select-theater').append(html);
			}
 		})
	})

</script>

			<!-- Start Style Switcher -->
			<div class="switcher"></div>
			<!-- End Style Switcher -->
</body>
</html>