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
							<h2>영화 등록</h2>
						</div>
						<nav id="breadcrumbs">
							<ul>
                                <li><a href="index.html">영화</a>/</li>
                                <li>무비차트</li>/<li>무비차트</li>
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
						<div class="dividerHeading">
							<h4>
								<span>영화 등록 작성</span>
							</h4>
						</div>
						<%--  <form:form action="/movie/movieInsert" id="registerform"
							 method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<input type="hidden" class="form-control" name="member_id"
									value="${member_id}">
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="movie_name"
									placeholder="영화 이름" />
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="movie_title"
									placeholder="글 제목" />
							</div>
							<div class="form-group">
								<form:select class="form-control" path="movie_kind">
									<option value="A">개봉예정</option>
									<option value="B">상영중</option>
									<option value="C">상영종료</option>
								</form:select>
							</div>
							
							<div class="form-group">
								<form:textarea rows="10" cols="73" class="form-control"
									path="movie_content" placeholder="글 내용" />
							</div>
							
							<div class="form-group">
								<form:input type="text" class="form-control" path="movie_director"
									placeholder="감독" />
							</div>
							
							<div class="form-group">
								<form:input type="text" class="form-control" path="movie_actor"
									placeholder="배우" />
								<form:errors path="movie_actor" cssClass="error" />
							</div>

							<div class="form-group">
								<form:input type="text" class="form-control" path="movie_genre"
									placeholder="장르" />
								<form:errors path="movie_actor" cssClass="error" />
							</div>	
							
							<div class="form-group">
								<form:select class="form-control" path="movie_grade">
									<option value="A">전체 관람가</option>
									<option value="K">12세 관람가</option>
									<option value="T">15세 관람가</option>
									<option value="Z">청소년 관람불가</option>
								</form:select>
							</div> --%>							
							
					 
						 <form action="/movie/movieRegist" method="post" id="registerform" enctype="multipart/form-data"> 
						제목 : <input type="text" name="movie_name"/> 
						<br/> 
						종류 : <select name="movie_kind">
							<option value="A">개봉예정</option>
							<option value="B">상영중</option>
							<option value="C">상영종료</option>
						</select> 
						<br/>
						감독 : <input type="text" name="movie_director"/>
						<br/>
						배우 : <input type="text" name="movie_actor"/>
						<br/>
						장르 : <input type="text" name="movie_genre"/>
						<br/>
						등급 : <select name="movie_grade">
							<option value="A">전체 관람가</option>
							<option value="K">12세 관람가</option>
							<option value="T">15세 관람가</option>
							<option value="Z">청소년 관람불가</option>
						</select> 
						<br/>
						<%-- 상영날짜 : ${MovieVo.movie_date}
						<br/>
						조회수 : ${MovieVo.movie_hit}
						<br/> --%>
						내용 : <textarea rows="10" cols="50" name="movie_content"></textarea>
						<br/>
						나라 : <input type="text" name="movie_national">
						<br/>
						상영시간 : <input type="text" name="movie_time">
						<br/>
						<div class="form-group">
							<input type="file" name="file">
						</div>
						<div class="form-group">
							<input type="submit" value="작성 완료">
						</div>
						</form>


						<button class="fileButton">파일 추가</button>
						<div class="form-group" id="fileAdd">
							<label for="exampleInputEmail1">추가 파일은 아래영역에 드래그하십시오.</label>
							<div class="fileDrop"></div>
							<button class="cancleFile">취소</button>
						</div>

						<div class="box-footer">
							<div>
								<hr>
							</div>
							<ul class="mailbox-attachments clearfix uploadedList">
							</ul>
						</div>
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
 $("#fileAdd").hide();

$(".fileButton").on("click", function(){
	event.preventDefault();
	$("#fileAdd").show();
	$(this).hide();
});

$(".cancleFile").on("click", function(){
	event.preventDefault();
	$("#fileAdd").hide();
	$(".fileButton").show();
});

var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		  url: '/movie/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});

$(".uploadedList").on("click", ".delbtn", function(event){
	
	event.preventDefault();
	
	var that = $(this);
	 
	$.ajax({
	   url:"/movie/deleteFile",
	   type:"post",
	   data: {fileName:$(this).attr("href")},
	   dataType:"text",
	   success:function(result){
		   if(result == 'deleted'){
			   that.closest("li").remove();
		   }
	   }
   });
});

$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that1 = $(this);
	
	var str1 ="";
	$(".uploadedList .delbtn").each(function(index){
		 str1 += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	that1.append(str1);

	that1.get(0).submit();
});

</script>
	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>