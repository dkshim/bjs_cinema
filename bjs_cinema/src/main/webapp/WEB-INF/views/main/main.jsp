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
    
    <script>
    
    var result = '${msg}';
   		 if(result=='SUCCESS'){
    			alert("회원가입이 성공적으로 완료되었습니다. :)");
    		}
    
    </script>
</head>
<body class="home">

<!-- 헤더 -->
   <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!-- /헤더 -->

<section class="wrapper">
    <div class="slider-wrapper">
        <div class="slider">
            <div class="fs_loader"></div>
            <div class="slide">
                <img src="/resources/img/main/1112.jpg" width="1920" height="700" data-in="fade" data-out="fade" />

                <img src="/resources/img/main/josun.jpg" width="270" height="auto" data-position="30,1100" data-in="left" data-out="right" data-delay="700"/>

                <p class="slide-1" data-position="50,610" data-in="fade" data-out="fade" data-delay="800">조선명탐정 3.</p>
                <p class="slide-1" data-position="100,560" data-in="fade" data-out="fade" data-delay="1200">들어와 들어와 </p>
                <p class="slide-1" data-position="150,500" data-in="fade" data-out="fade" data-delay="1600">후회 안한다니까?!</p>

                <p class="slide-1a" data-position="220,770" data-in="bottom" data-out="bottom" data-delay="2000" data-ease-in="easeOutBounce">우왕굳</p>
                <p class="slide-1a" data-position="267,698" data-in="bottom" data-out="bottom" data-delay="3200"  data-ease-in="easeOutBounce">신기하냐?</p>
                <p class="slide-1a" data-position="314,760" data-in="bottom" data-out="bottom" data-delay="4200"  data-ease-in="easeOutBounce">으헤헤헤</p>
                <p class="slide-1a" data-position="361,753" data-in="bottom" data-out="bottom" data-delay="5200"  data-ease-in="easeOutBounce">ㅋㅋㅋㅋㅋ</p>
            </div>

            <div class="slide">
                <img src="/resources/img/main/15169432327320.jpg" width="1950" height="530" data-in="fade" data-out="fade" />

                <img src="" width="400" height="490" data-position="20,400" data-in="right" data-0ut="bottom" data-delay="500"/>

                <p class="slide-2 " data-position="120,900" data-in="bottom" data-out="top" data-delay="2000">블랙팬서</p>
                <p class="slide-2a " data-position="210,900" data-in="left" data-out="right" data-delay="3000">A responsive multipurpose Theme</p>
                <p class="slide-2b " data-position="270,900" data-in="top" data-out="bottom" data-delay="4000" data-ease-in="easeOutBounce">For Your Prestigious World !</p>
            </div>

            <div class="slide">
               
                <img src="/resources/img/main/eee.jpg"  width="1950" height="450" data-in="fade" data-out="fade" />
				
                <p class="slide-heading" data-position="130,370" data-in="top" data-out="top" data-ease-in="easeOutBounce" data-delay="1500">Electrify theme</p>

                <p class="sub-line" data-position="230,370" data-in="right" data-out="left" data-delay="2500">grid system and responsive design</p>

                <img src="images/fraction-slider/gadgets/laptop.png" width="456" height="272" data-position="115,1180" data-in="bottom" data-out="bottom" data-delay="400">

                <img src="images/fraction-slider/gadgets/mack.png" width="357" height="313" data-position="90,1040" data-in="top" data-out="bottom" data-delay="200">

                <img src="images/fraction-slider/gadgets/ipad.png" width="120" height="170" data-position="230,1030" data-in="left" data-out="left" data-delay="300">

                <img src="images/fraction-slider/gadgets/smartphone.png" width="70" height="140" data-position="270,1320" data-in="right" data-out="right" data-delay="300">

                <a href=""	class="btn btn-lg btn-default" data-position="320,370" data-in="bottom"  data-out="bottom" data-delay="3700" data-ease-in="easeOutBounce">Free Download</a>
            </div>
             <div class="slide">
               
                <img src="/resources/img/main/BJSLOGO2.PNG"  width="1950" height="450" data-in="fade" data-out="fade" />
				
                <p class="slide-heading" data-position="130,370" data-in="top" data-out="top" data-ease-in="easeOutBounce" data-delay="1500">Electrify theme</p>

                <p class="sub-line" data-position="230,370" data-in="right" data-out="left" data-delay="2500">grid system and responsive design</p>

                <img src="images/fraction-slider/gadgets/laptop.png" width="456" height="272" data-position="115,1180" data-in="bottom" data-out="bottom" data-delay="400">

                <img src="images/fraction-slider/gadgets/mack.png" width="357" height="313" data-position="90,1040" data-in="top" data-out="bottom" data-delay="200">

                <img src="images/fraction-slider/gadgets/ipad.png" width="120" height="170" data-position="230,1030" data-in="left" data-out="left" data-delay="300">

                <img src="images/fraction-slider/gadgets/smartphone.png" width="70" height="140" data-position="270,1320" data-in="right" data-out="right" data-delay="300">

                <a href=""	class="btn btn-lg btn-default" data-position="320,370" data-in="bottom"  data-out="bottom" data-delay="3700" data-ease-in="easeOutBounce">Free Download</a>
            </div>
            
        </div>
    </div>
    <!-- <div class="grey_bg">
        <div class="container">
            <div class="row sub_content">
                <div class="col-sm-4">
                    <div class="serviceBox_5">
                        <span class="service-icon">01</span>
                        <h3>Web <br>Agency</h3>
                        <p>Lorem ipsum dolor sit amet, consec tetur adipisc elit. Proin ultricies ves tibulum velit, bibendum et condi.</p>
                        <div class="read">
                            <a href="" class="btn btn-default">Read Info</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="serviceBox_5">
                        <span class="service-icon">02</span>
                        <h3>Clean & Clear<br> Design</h3>
                        <p>Lorem ipsum dolor sit amet, consec tetur adipisc elit. Proin ultricies ves tibulum velit, bibendum et condi.</p>
                        <div class="read">
                            <a href="" class="btn btn-default">Read Info</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="serviceBox_5">
                        <span class="service-icon">03</span>
                        <h3>Responsive<br> Designs</h3>
                        <p>Lorem ipsum dolor sit amet, consec tetur adipisc elit. Proin ultricies ves tibulum velit, bibendum et condi.</p>
                        <div class="read">
                            <a href="" class="btn btn-default">Read Info</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section>
        <div class="container">
            <div class="row sub_content">
                <div class="col-md-12">
                    <div class="dividerHeading">
                        <h4><span>Recent Work</span></h4>
                    </div>
                    <div id="recent-work-slider" class="owl-carousel">
                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_1.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_1.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>
                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_2.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_2.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>
                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_3.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_3.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>
                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_4.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_4.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>
                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_5.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_5.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>
                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_6.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_6.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>

                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_7.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_7.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>

                        <div class="recent-item box">
                            <figure class="touching ">
                                <img src="images/portfolio/portfolio_8.png" alt=""/>
                                <div class="option inner">
                                    <div>
                                        <h5>Touch and Swipe</h5>
                                        <a href="images/portfolio/full/portfolio_8.png" class="fa fa-search mfp-image"></a>
                                        <a href="portfolio_single.html" class="fa fa-link"></a>
                                        <span>Mobile</span>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->

  <!--   <div class="grey-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5 col-md-offset-1 super_sub_content clearfix same-height">
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-pencil"></i>
                            </div>
                            <div class="service-content">
                                <h3>Clean &amp; Minimal</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-diamond"></i>
                            </div>
                            <div class="service-content">
                                <h3>Branding Theme</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-anchor"></i>
                            </div>
                            <div class="service-content">
                                <h3>Modern Design</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="serviceBox_1">
                            <div class="service-icon">
                                <i class="fa fa-gears"></i>
                            </div>
                            <div class="service-content">
                                <h3>Quick Support</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec euismod dui. Mauris risus dolor, vulputate at placerat vitae, rutrum vel.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 inner-image same-height hidden-sm hidden-xs" style="background: url('images/awesome-1.png') no-repeat center;"></div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row super_sub_content">
            <div class="col-md-6 col-sm-5 wow fadeInDown">
                <div class="widget widget_tab">
                    <ul  class="nav nav-tabs">
                        <li class="active"><a href="#Popular" data-toggle="tab">Popular</a></li>
                        <li class=""><a href="#Recent" data-toggle="tab">Recent</a></li>
                        <li class="last-tab"><a href="#Recent-Comment" data-toggle="tab"><i class="fa fa-comments-o"></i></a></li>
                    </ul>

                    <div  class="tab-content clearfix">
                        <div class="tab-pane fade active in" id="Popular">
                            <h3>Unique & Clean Design</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent. </p>

                        </div>
                        <div class="tab-pane fade" id="Recent">
                            <h3>Easy to Customize</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent. </p>

                        </div>
                        <div class="tab-pane fade" id="Recent-Comment">
                            <h3>Free Support & Updates</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue lorem ut augue aliquam, ut rutrum nulla eleifend. Nunc aliquam suscipit leo, in mattis massa ullamcorper sed. Pellentesque dictum erat at eros egestas, vel convallis nibh pharetra. Class aptent taciti sociosqu ad litora torquent.</p>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-7">
                <div class="col-sm-4 text-center">
                        <span class="circular-chart-small" data-percent="94">
                            <span class="percent"></span>
                        </span>
                    <h5 class="circular-title">WebDesign</h5>
                </div>
                <div class="col-sm-4 text-center">
                        <span class="circular-chart-small" data-percent="87">
                            <span class="percent"></span>
                        </span>
                    <h5 class="circular-title">Graphic Design</h5>
                </div>
                <div class="col-sm-4 text-center">
                        <span class="circular-chart-small" data-percent="77">
                            <span class="percent"></span>
                        </span>
                    <h5 class="circular-title">Mobile Applications</h5>
                </div>
            </div>
        </div>
    </div> -->

    <div class="super_sub_content grey_bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mrgt-70">
                    <div class="serviceBox_7 right">
                        <div class="service-icon">
                            <i class="fa fa-headphones"></i>
                        </div>
                        <h3>상영예정작</h3>
                        <p>
                         
                        </p>
                    </div>

                    <div class="serviceBox_7 right">
                        <div class="service-icon">
                            <i class="fa fa-tasks"></i>
                        </div>
                        <h3>영화예매순위</h3>
                        <p>
                            All our themes come with extensive HTML Documentation that teaches you how...
                        </p>
                    </div>
                </div>

                <div class="col-sm-4">
                    <img src="resources/img/7.png" class="img-responsive center-block">
                </div>

                <div class="col-sm-4 mrgt-70">
                    <div class="serviceBox_7">
                        <div class="service-icon">
                            <i class="fa fa-pencil"></i>
                        </div>
                        <h3>easy customizable</h3>
                        <p>
                            All our themes include advanced options which makes them super flexible for...
                        </p>
                    </div>
                    <div class="serviceBox_7">
                        <div class="service-icon">
                            <i class="fa fa-gears"></i>
                        </div>
                        <h3>global features</h3>
                        <p>
                            We made sure images on your website would look stunning on any device. Our...
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<!-- 푸터 -->
   <jsp:include page="/WEB-INF/views/include/footer.jsp" />
 <!-- /푸터 -->

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

<!-- Start Style Switcher -->
<div class="switcher"></div>
<!-- End Style Switcher -->

<script>
      /*portfolio*/
    (function($) {
        "use strict";
        var $container = $('.portfolio'),
                $items = $container.find('.portfolio-item'),
                portfolioLayout = 'fitRows';

        if( $container.hasClass('portfolio-centered') ) {
            portfolioLayout = 'masonry';
        }

        $container.isotope({
            filter: '*',
            animationEngine: 'best-available',
            layoutMode: portfolioLayout,
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            },
            masonry: {
            }
        }, refreshWaypoints());

        function refreshWaypoints() {
            setTimeout(function() {
            }, 1000);
        }

        $('ul#filter li').on('click', function() {
            var selector = $(this).attr('data-filter');
            $container.isotope({ filter: selector }, refreshWaypoints());
            $('ul#filter li').removeClass('selected');
            $(this).addClass('selected');
            return false;
        });

        function getColumnNumber() {
            var winWidth = $(window).width(),
                    columnNumber = 1;

            if (winWidth > 1200) {
                columnNumber = 5;
            } else if (winWidth > 950) {
                columnNumber = 4;
            } else if (winWidth > 600) {
                columnNumber = 3;
            } else if (winWidth > 400) {
                columnNumber = 2;
            } else if (winWidth > 250) {
                columnNumber = 1;
            }
            return columnNumber;
        }

        function setColumns() {
            var winWidth = $(window).width(),
                    columnNumber = getColumnNumber(),
                    itemWidth = Math.floor(winWidth / columnNumber);

            $container.find('.portfolio-item').each(function() {
                $(this).css( {
                    width : itemWidth + 'px'
                });
            });
        }

        function setPortfolio() {
            setColumns();
            $container.isotope('reLayout');
        }

        $container.imagesLoaded(function () {
            setPortfolio();
        });

        $(window).on('resize', function () {
            setPortfolio();
        });
    })(jQuery);
</script>

<!-- WARNING: Wow.js doesn't work in IE 9 or less -->
<!--[if gte IE 9 | !IE ]><!-->
<script type="text/javascript" src="/resources/js/wow.min.js"></script>
<script>
    // WOW Animation
    new WOW().init();
</script>

<![endif]-->

</html>