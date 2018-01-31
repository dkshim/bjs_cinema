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
/*  [class|="sect-base"][class$="movie"] .box-contents {
    width: 765px;
} */ 

[class|="sect-base"] .box-contents {
    float: left;
    position: relative;
}

#contents {
    clear: both;
    padding-bottom: 20px;
}

#cgvwrap .cgv-ad-wrap .sect-head-ad, .head, .im-wrap, #contents, .foot, .sect-smuse, .sect-cinfo {
    position: relative;
/*     width: 980px; */
    margin: 0 auto;
}

[class|="wrap-movie"][class$="detail"] [class^="sect-"] {
    margin-top: 40px;
}

div[class^="sect-"] {
    clear: both;
    zoom: 1;
}

[class|="sect-base"] {
}

[class|="sect-base"][class$="movie"] .box-contents {
    width: 765px;
}

[class|="sect-base"] .box-contents {
    float: left;
    position: relative;
}

.tit-heading-wrap > h3 {
    display: inline-block;
    position: relative;
    height: inherit;
    margin: 0;
    background-image: none;
    color: #222;
    font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-size: 38px;
    text-align: left;
    vertical-align: middle;
}

h3 {
    height: 41px;
    margin: 30px 0 15px; 
    background: url(../images/common/bg/bg_h3_line.jpg) repeat-x 0 50%;
    line-height: 41px;
    text-align: center;
    font-weight: normal;
    font-family: 'NanumBarunGothicBold';
}

.tit-heading-wrap {
    position: relative;
    height: 51px;
    margin-top: 30px;
    border-bottom: 3px solid #241d1e;
}

.box-image {
	position: absolute;
}

.box-contents {
	margin-left: 200px;
}


.sect-story-movie {
	height: 200px;
	top: 100px;
}

.cols-content {
	margin-top: 300px;
}



[class|="sect-base"] .title strong {
    color: #1a1919;
    font-size: 25px;
    vertical-align: middle;
}

[class|="sect-base"][class$="movie"] .spec {
    padding-top: 18px;
    line-height: 1.6;
}



</style>

</head>
<body class="home">
	<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<!-- /헤더 -->

	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->


		<!-- Contents Area -->
		<div id="contents" class="">
            <div class="tit-heading-wrap">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;<h3>영화상세</h3>
			</div>
            <!-- Contents Start -->


		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-6 col-sm-6">
						
						<div class="sect-base-movie">
						<div class="box-image">
        					<a href="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80445/80445_1000.jpg" title="포스터 크게 보기 새창" target="_blank">
            				<span class="thumb-image"> 
               				<img src="/movie/displayFile?fileName=${movieVO.movie_img}" alt="NO IMAGE" />
<!--                 <span class="ico-posterdetail">포스터 크게 보기</span>
                <span class="ico-grade grade-12"> 12세 이상</span> -->
            </span> 
        </a> 
    </div>
    <div class="box-contents">
        <div class="title"> 
            <strong>${movieVO.movie_name }</strong>
            <em class="round lightblue"><span>${movieVO.movie_kind }</span></em>
        </div>
        <div class="score"> 
            <div class="egg-gage small">
            <span class="egg great"></span>
				<span class="percent"> </span>
			</div>
    
            <strong class="count">
                (<span class="view">실관람객 :&nbsp;<em>35,376명</em></span>) </strong> 
            </div>
            <!-- 떨어지는 얘 이전 요소에 class=on을 넣는다 -->
         
        <div class="spec">
        	<ul>
        		<li><strong>감독:&nbsp;</strong>${movieVO.movie_director }</li>
        		<li><strong>배우:&nbsp;</strong>${movieVO.movie_actor }</li>
        		<li><strong>장르:&nbsp;</strong>${movieVO.movie_genre }</li>
        		<li><strong>기본:&nbsp;</strong>${movieVO.movie_grade },&nbsp; ${movieVO.movie_time }, &nbsp; ${movieVO.movie_national }</li>
        		<li><strong>개봉:&nbsp;</strong>${movieVO.movie_date }</li>
        	</ul>
        </div>
       		 
        <span class="screentype">
        </span>
        
        <br/>
        <span class="like">
            <button class="btn-like" value="80445">영화 찜하기</button>
            <span class="count">
                <strong><i>9,629</i><span>명이 선택</span></strong> 
                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
            </span>
        </span>
    </div>
</div><!-- .sect-base -->

    <div class="cols-content" id="menu">
        <div class="col-detail">
            <div class="sect-story-movie">${movieVO.movie_content }</div>
		</div>
	</div>
				</div>
				</div>
				</div>
				</section>
				</div>
			</div>
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
if ( $.browser.msie ) {
	var _thisContentWrapContent = _thisContentWrap.html().replace(/<BR>/g, '{new_line}').replace(/{new_line}/g, '\n');
} else {
	var _thisContentWrapContent = _thisContentWrap.text();
}

</script>
	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>