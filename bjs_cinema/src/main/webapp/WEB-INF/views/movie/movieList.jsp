<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	session.setAttribute("member_id", 1);
%>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" class="no-js" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>

<style type="text/css">

[class|="sect"][class*="chart"] > ol > li {
    float: left;
    width: 197px;
    margin-left: 200px;
    padding-bottom: 30px;
}

ol, ul {
    list-style: none;
    display: inline-block;
}

h4 {
    margin-left: 200px;	
}

h3:first-child + ol .rank, [class|="sect"][class*="chart"] > h4:first-child + ol .rank, [class|="sect"][class*="chart"] > .spec + ol .rank {
    background: #e71a0f;
}

.rank {
    display: block;
    height: 28px;
    margin-bottom: 4px;
    border: 6px solid #000000;
    background: #333333;
    color: #ffffff;
    font-size: 19px;
    text-align: center;
    line-height: 28px;
    padding-bottom: 30px;
}

strong {
    font-weight: normal;
}

b, strong {
    font-weight: 700;
}

div[class^="sect-"]:after {
    content: '';
    clear: both;
    display: block;
}

[class|="sect"][class*="chart"] > ol:after {
    content: '';
    clear: both;
    display: block;
}

dl:after, ul:after, ol:after {
    content: '';
    clear: both;
    display: block;
}

.box-image a {
    display: block;
}

a {
    color: inherit;
    text-decoration: none;
}

element.style {
}
module.css:874
[class|="sect"][class*="chart"] .screentype {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 29px;
    padding-top: 27px;
    background: url(../images/common/bg/bg_poster-gradation.png) 0 0 repeat-x;
    text-align: center;
}
module.css:483
.screentype {
    display: block;
}
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from div.box-image
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from li
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
user agent stylesheet
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
Inherited from ol
reset.css:27
ol, ul {
    list-style: none;
}
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
user agent stylesheet
ol {
    display: block;
    list-style-type: decimal;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    -webkit-padding-start: 40px;
}
Inherited from div.sect-movie-chart
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from div.wrap-movie-chart
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from div#contents
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from div#contaniner
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from div#cgvwrap
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from body
reset.css:49
body, input, textarea, button, table {
    font-size: 12px;
    line-height: 1.2;
    color: #666;
    font-family: 'NanumBarunGothic', '맑은 고딕', '돋움', Dotum, sans-serif;
}
reset.css:26
body {
    line-height: 1;
    color: black;
}
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
Inherited from html
reset.css:25
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}

[class|="sect"][class*="chart"] .btn-like {
    width: 23px;
    height: 23px;
    background-position: -60px -66px;
}

/* .like .btn-like {
    display: inline-block;
    width: 30px;
    height: 28px;
/*     background: url(../img/grayheart.PNG) 0 -60px no-repeat; */
    vertical-align: middle;
    font: 0/0 a;
    zoom: 1;
}
 */
  button, input[type='submit'], input[type='button'] {
    cursor: pointer;
    margin: 0;
    padding: 0;
} 
 

/* button, input {
    overflow: visible;
} */

.ico-grade.grade-12 {
    background-position: -51px 0;
}

.ico-grade {
    display: block;
    position: absolute;
    left: 5px;
    top: 5px;
    width: 21px;
    height: 21px;
    background: url(../images/sprite/sprite_icon.png) no-repeat;
    font: 0/0 a;
    zoom: 1;
}


div[class^="sect-"] {
    clear: both;
    zoom: 1;
}

.sect-sorting {
    position: relative;
    margin-top: 20px;
    text-align: right;
}

label {
    cursor: default;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-size: 100%;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}

body, input, textarea, button, table {
    font-size: 12px;
    line-height: 1.2;
    color: #666;
    font-family: 'NanumBarunGothic', '맑은 고딕', '돋움', Dotum, sans-serif;
}

input, select, img {
    vertical-align: middle;
}

.thumb-image {
    border: 6px solid #000000;
}

.thumb-image {
    display: block;
    position: relative;
}



</style>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Electrify Responsive Multipurpose Template</title>
	<meta name="description" content="">

    <!-- CSS FILES -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" type="/resources/text/css" href="/resources/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/resources/css/layout/wide.css" data-name="layout">

    <link rel="stylesheet" type="/resources/text/css" href="/resources/css/switcher.css" media="screen" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--Start Header-->
    <header id="header">
        <div id="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 top-info hidden-xs">
                        <span><i class="fa fa-phone"></i>Phone: (123) 456-7890</span>
                        <span><i class="fa fa-envelope"></i>Email: mail@example.com</span>
                    </div>
                    <div class="col-sm-4 top-info">
                        <ul>
                            <li><a href="" class="my-tweet"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="" class="my-facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="" class="my-skype"><i class="fa fa-skype"></i></a></li>
                            <li><a href="" class="my-pint"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="" class="my-rss"><i class="fa fa-rss"></i></a></li>
                            <li><a href="" class="my-google"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="logo-bar">
            <div class="container">
                <div class="row">
                    <!-- Logo / Mobile Menu -->
                    <div  class="col-lg-3 col-sm-3 ">
                        <div id="logo">
                           <h1><a href="index.html"><img alt="logo" src="images/logo.png"/></a></h1>
                        </div>
                    </div>
                    <!-- Navigation
    ================================================== -->
                    <div class="col-lg-9 col-sm-9">
                        <div class="navbar navbar-default navbar-static-top" role="navigation">
                            <!--  <div class="container">-->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="#">Home</a>
                                    <ul class="dropdown-menu">
                                            <li><a href="index.html">Home 1</a></li>
                                            <li><a href="index_2.html">Home 2</a></li>
                                            <li><a href="index_3.html">Home 3</a></li>
                                            <li><a href="index_4.html">Home 4</a></li>
                                            <li><a href="index_5.html">Home 5</a></li>
                                            <li><a href="index_6.html">Home 6</a></li>
                                            <li><a href="index_7.html">Home 7</a></li>
                                        </ul>
                                </li>

                                    <li><a href="#">Shortcodes</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="elements.html">Elements</a></li>
                                            <li><a href="form-elements.html">Form Elements</a></li>
                                            <li><a href="columns.html">Columns</a></li>
                                            <li><a href="typography.html">Typography</a></li>
                                            <li><a href="pricing-tables.html">Pricing Tables</a></li>
                                            <li><a href="animation.html">Animation</a></li>
                                            <li><a href="icons.html">Icons</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="#" >Pages</a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="about.html">About</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="about.html">About Us 1</a></li>
                                                    <li><a href="about-2.html">About Us 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="services.html">Services</a></li>
                                            <li><a href="faq.html">FAQ</a></li>
                                            <li><a href="sidebar-right.html">Right Sidebar</a></li>
                                            <li><a href="sidebar-left.html">Left Sidebar</a></li>
                                            <li><a href="404-page.html">404 Page</a></li>
                                        </ul>
                                    </li>

                                    <li class="active"><a href="#">Portfolio</a>
                                        <ul class="dropdown-menu">
                                            <li class="active">
                                                <a href="#">Portfolio Classic</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="portfolio_2.html">Portfolio 2</a></li>
                                                    <li class="active"><a href="portfolio_3.html">Portfolio 3</a></li>
                                                    <li><a href="portfolio_4.html">Portfolio 4</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="portfolio_masonry_3.html">Portfolio Masnory</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="portfolio_masonry_2.html">Masonry portfolio 2</a></li>
                                                    <li><a href="portfolio_masonry_3.html">Masonry portfolio 3</a></li>
                                                    <li><a href="portfolio_masonry_4.html">Masonry portfolio 4</a></li>
                                                </ul>
                                            </li>

                                            <li>
                                                <a href="portfolio_single.html">Portfolio Single</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="portfolio_single.html">Portfolio Single 1</a></li>
                                                    <li><a href="portfolio_single_2.html">Portfolio Single 2</a></li>
                                                    <li><a href="portfolio_single_3.html">Portfolio Single 3</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>

                                    <li><a href="#">Blog</a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="portfolio_masonry_3.html">Masnory Blog Style</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="blog-masonry-two.html">Blog Masonry 2</a></li>
                                                    <li><a href="blog-masonry-three.html">Blog Masonry 3</a></li>
                                                    <li><a href="blog-masonry-four.html">Blog Masonry 4</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="portfolio_masonry_3.html">Classic Blog Style</a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="blog-large-image.html">Large Image</a></li>
                                                    <li><a href="blog-medium-image.html">Medium Image</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="blog-post.html">Single Post</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="#"> <span class="data-hover" data-hover="contact">Contact</span></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="contact_1.html">Contact 1</a></li>
                                            <li><a href="contact_2.html">Contact 2</a></li>
                                            <li><a href="contact_3.html">Contact 3</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
<!--End Header-->
	
	<!--start wrapper-->
	<section class="wrapper">
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
        <section>
        	<h2>무비차트</h2>

		<!-- //Heading Map Multi -->
        <!-- Sorting -->
        <div class="sect-sorting">
             <div class="nowshow">
                        <input type="checkbox" id="chk_nowshow"  title="현재 선택됨" checked/>
            
                <label for="chk_nowshow">현재 상영작만 보기</label>                
            </div>
            <label for="order_type" class="hidden">정렬</label>
            <select id="order_type" name="order-type">
				<option title="현재 선택됨" selected value="1">예매율순</option>
                <option value="2">평점순</option>
                <option value="3">관람객순</option>
            </select>
            <button type="button" class="round gray"><span>GO</span></button>
        </div>
        
	
		
		<div class="sect-movie-chart">
			<h4 class="hidden">무비차트 - 예매율순</h4>
			<c:forEach items="${list}" var="list">
			<ol>
				<li>
					<div class="box-image">
						<strong class="rank">No.1</strong>
							<a href="/movie/movieRead?movie_id=${list.movie_id}"><img src="/movie/displayFile?fileName=${list.movie_img}" alt="NO IMAGE" /></a>
								<span class="thumb-image">
									<span class="ico-grade grade-12">12세 이상</span>
								</span>
							<span class="screentype"></span>
					</div>
					<div class="box-contents">
						<a href="/movie/movieRead?movie_id=${list.movie_id}">${list.movie_name}</a>
						<div class="score">		<!-- 예매율,  -->
							<span class="txt-info">
								<strong>${list.movie_date }</strong>
							</span>   <!-- 개봉날짜  -->
							<br/>
							<span class="like">
								<i class="fa fa-heart" onclick="hearton()"></i>영화 찜하기
									<span class="count">
										<strong>
											<i>명수</i>
										</strong>
									</span>
							</span>
						</div>
					</div>
				</li>
			</ol>
			</c:forEach>
		</div>


        <br/>
       	<form role="form" action="movieRegist" method="get">
 			  	<input type='hidden' name='member_id' value="${MemberVO.member_id }"> 
			 	<input type="submit" value="등록" id="insertBtn">					
		</form> 
		
        
        <!-- //Sorting -->

        </section>

		
	</section>
	<!--end wrapper-->
	
	<!--start footer-->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span>About Us</span></h4>
                    </div>
                    <div class="widget_content">
                        <p>Donec earum rerum hic tenetur ans sapiente delectus, ut aut reiciendise voluptat maiores alias consequaturs aut perferendis doloribus asperiores.</p>
                        <ul class="contact-details-alt">
                            <li><i class="fa fa-map-marker"></i> <p><strong>Address</strong>: #2021 Lorem Ipsum</p></li>
                            <li><i class="fa fa-user"></i> <p><strong>Phone</strong>:(+91) 9000-12345</p></li>
                            <li><i class="fa fa-envelope"></i> <p><strong>Email</strong>: <a href="#">mail@example.com</a></p></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span>Recent Posts</span></h4>
                    </div>
                    <div class="widget_content">
                       <ul class="links">
                            <li><a href="#">Aenean commodo ligula eget dolor<span>November 07, 2015</span></a></li>
                            <li><a href="#">Temporibus autem quibusdam <span>November 05, 2015</span></a></li>
                            <li><a href="#">Debitis aut rerum saepe <span>November 03, 2015</span></a></li>
                            <li><a href="#">Et voluptates repudiandae <span>November 02, 2015</span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span>Twitter</span></h4>
                    </div>
                    <div class="widget_content">
                        <ul class="tweet_list">
                            <li class="tweet_content item">
                                <p class="tweet_link"><a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur adipiscing eli</p>
                                <span class="time">29 September 2015</span>
                            </li>
                            <li class="tweet_content item">
                                <p class="tweet_link"><a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur adipiscing eli</p>
                                <span class="time">29 September 2015</span>
                            </li>
                            <li class="tweet_content item">
                                <p class="tweet_link"><a href="#">@jquery_rain </a> Lorem ipsum dolor et, consectetur adipiscing eli</p>
                                <span class="time">29 September 2015</span>
                            </li>
                        </ul>
                    </div>
                    <div class="widget_content">
                        <div class="tweet_go"></div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span>Flickr Gallery</span></h4>
                    </div>
                    <div class="widget_content">
                        <div class="flickr">
                            <ul id="flickrFeed" class="flickr-feed"></ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
	<!--end footer-->
	
	<section class="footer_bottom">
		<div class="container">
			<div class="row">
            <div class="col-sm-6">
                <p class="copyright">&copy; Copyright 2015 Electrify | Powered by  <a href="http://www.jqueryrain.com/">jQuery Rain</a></p>
            </div>

            <div class="col-sm-6 ">
                <div class="footer_social">
                    <ul class="footbot_social">
                        <li><a class="fb" href="#." data-placement="top" data-toggle="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twtr" href="#." data-placement="top" data-toggle="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="dribbble" href="#." data-placement="top" data-toggle="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="skype" href="#." data-placement="top" data-toggle="tooltip" title="Skype"><i class="fa fa-skype"></i></a></li>
                        <li><a class="rss" href="#." data-placement="top" data-toggle="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
		</div>
	</section>

    <script type="/resources/text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.easing.1.3.js"></script>
    <script src="/resources/js/retina-1.1.0.min.js"></script>
    <script type="/resources/text/javascript" src="/resources/js/jquery.cookie.js"></script> <!-- jQuery cookie -->
    <script type="/resources/text/javascript" src="/resources/js/styleswitch.js"></script> <!-- Style Colors Switcher -->
    <script type="/resources/text/javascript" src="/resources/js/jquery.smartmenus.min.js"></script>
    <script type="/resources/text/javascript" src="/resources/js/jquery.smartmenus.bootstrap.min.js"></script>
        <script type="/resources/text/javascript" src="/resources/js/jflickrfeed.js"></script>
    <script type="/resources/text/javascript" src="/resources/js/jquery.magnific-popup.min.js"></script>
    <script type="/resources/text/javascript" src="/resources/js/jquery.isotope.min.js"></script>
    <script type="/resources/text/javascript" src="/resources/js/swipe.js"></script>
    <script type="/resources/text/javascript" src="/resources/js/jquery-scrolltofixed-min.js"></script>
    <script type="/resources/text/javascript" src="/resources/js/jquery-hoverdirection.min.js"></script>

    <script src="/resources/js/main.js"></script>
    <!-- Start Style Switcher -->
    <div class="switcher"></div>
    <!-- End Style Switcher -->
    
    <script type="text/javascript">
    
	$(document).ready(function(){
			
		$('#insertBtn').on("click", function(){
			e.prevenDefault();
			fn_insertMovie();
			});
		});
	
	function fn_insertMovie(){
		var comSubmit = new ComSubmit("frm");
		comSubmit.setUrl("/movie/movieInsert");
	    comSubmit.submit();
		
	}
	

	
    </script>
    
    
    
</body>
</html>