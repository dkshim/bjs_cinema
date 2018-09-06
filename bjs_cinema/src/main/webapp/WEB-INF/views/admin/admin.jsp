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
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/admin/admin.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" media="screen" data-name="skins">
    <link rel="stylesheet" href="/resources/css/layout/wide.css" data-name="layout">
	<link rel="icon" href="/resources/img/B.PNG">

	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
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
</head>
<body>
	<!-- 헤더 -->
   <jsp:include page="/WEB-INF/views/include/header.jsp" />
  	<!-- /헤더 -->
  
	<!-- ------------------------------------- -->	
 		 <section class="page_head">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="page_title">
							<h2>관리자</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
								<li><a href="/main/main">홈</a>/</li>
								<li><b>관리자모드</b></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
	<!-- ------------------------------------- -->		
		
	<!-- ==================== -->		
	<br>
	<div class="container">
	<div class="row">
		<div class="span12">
            <div id="tab" class="btn-group" data-toggle="buttons-radio">
              <a href="#member2" class="btn btn-large btn-info active" data-toggle="tab">회원관리 <i class="fa fa-user" ></i> </a>
              <a href="#movie2" class="btn btn-large btn-info" data-toggle="tab">영화관리 <i class="fa fa-film" ></i></a>
              <a href="#store2" class="btn btn-large btn-info" data-toggle="tab">매점관리 <i class="fa fa-cutlery" ></i></a>
            </div>
             
            <div class="tab-content">
            
              <!-- *********************************************** -->
              <!-- 회원관리 -->
              <!-- *********************************************** -->
              <div class="tab-pane active" id="member2">
                <br>
                <p class="lead">회원 관리 <i class="fa fa-user"></i></p>
                <div class="row">
                    <div class="span3">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
						<script type="text/javascript">
  							google.charts.load('current', {'packages':['corechart']});
  							google.charts.setOnLoadCallback(drawChart);

						  function drawChart() {
							    var data = google.visualization.arrayToDataTable([
							      ['성별', '회원수'],
							      ['남자', 50],
							      ['여자', 180]
							    ]);
							
							    var options = {
							      title: '회원별 성별 분포표'
							    };
							
							    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
							
							    chart.draw(data, options);
							  }
							</script>

							<center>
							    <div id="piechart" style="width: 300px; height: 300px;"></div>
							</center>
                    </div>
                    
                    <div class="span9">
                      <input type="button" value="☞ 회원목록보기"onclick="location='/admin/memberInfo'">
                    </div>
                </div>
              </div>
              
              <!-- *********************************************** -->
              <!-- 회원관리 끝 -->
              <!-- *********************************************** -->
              
              <!-- ◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆ -->
              
              <!-- *********************************************** -->
              <!-- 영화관리 -->
              <!-- *********************************************** -->
              <div class="tab-pane" id="movie2">
                    <br>
                <p class="lead">Features content</p>
                <div class="row">
                    <div class="span6">
                      <p>영화관리</p> 
                    </div>
                    <div class="span6">
                      <input type="button" onclick="location='/movie/movieRegist'" value="☞ 영화등록">
                      <input type="button" onclick="location='/movie/movieList'" value="☞ 영화목록">
                    </div>
                </div>
              </div>
              <!-- *********************************************** -->
              <!-- 영화관리 끝-->
              <!-- *********************************************** -->
              
              <!-- ◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆ -->
              
              <!-- *********************************************** -->
              <!--매점관리 -->
              <!-- *********************************************** -->
              
              <div class="tab-pane" id="store2">
                    <br>
                <p class="lead">Requests content</p>
                <div class="row">
                    <div class="span3">
                      <img src="http://placehold.it/200x200">  
                    </div>
                    <div class="span5">
                      <p>매점관리
                    <div class="span4">
                      <img src="http://placehold.it/400x200">  
                    </div>
                </div>
              </div>
              
              <!-- *********************************************** -->
              <!--매점관리 끝 -->
              <!-- *********************************************** -->
              
            </div>
        </div>
	</div>
</div>
</div>
<br>
	
	
		
		
		
	<!-- ------------------------------------- -->	
	<!-- 푸터 -->
   <jsp:include page="/WEB-INF/views/include/footer.jsp" />
 	<!-- /푸터 -->
	<!-- ------------------------------------- -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>	

<script type="text/javascript" src="/resources/js/admin/admin.js"></script>	
<script src="/resources/js/login/login.js"></script>
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
</body>
</html>