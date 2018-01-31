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
/* #qnaCol li{
	display:inline;
	border-left:1px solid #999; 
	font:bold 12px Dotum; 
	padding:0 150px;

}
#qnaCol1 li{
	display:inline;
	border-left:1px solid #999; 
	padding:0 150px;

} */
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
<%--
		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="dividerHeading">
							<h4>
								<span>문의내역</span>
							</h4>
							<br> <br>
							<form action="/community/blackRegist" method="get">
								<table class="table table-hover">
									<thead>
										<tr>
											<td align="center">No</td>
											<td>글 제목</td>
											<td align="center">작성자</td>
											<td align="center">작성일</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="qna" items="${qnaMyList}">
											<tr class="article" id="${qna.black_id}">
												<td align="center">${black.rn}</td>
												<td><a
													href="/community/blackRead${pageMaker.makeSearch(pageMaker.cri.page) }&black_id=${black.black_id }">${black.black_title }</a></td>
												<td align="center">${userMap[black.black_id] }</td>
												<td align="center"><fmt:formatDate
														value="${black.black_date }" pattern="yyyy-MM-dd" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<c:if test="${person_id != -1 }">
									<input type="submit" value="글쓰기" class="btn-default">
								</c:if>
							</form>
							<div class='box-body' align="right">

								<select name="searchType">
									<option value="n"
										<c:out value="${cri.searchType == null?'selected':''}"/>>
										---</option>
									<option value="t"
										<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
										제목</option>
									<option value="c"
										<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
										내용</option>
									<option value="w"
										<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
										신고email</option>
									<option value="tc"
										<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
										제목 OR 내용</option>
									<option value="cw"
										<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
										내용 OR 신고된email</option>
									<option value="tcw"
										<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
										제목 OR 내용 OR 신고된email</option>
								</select><input type="text" name="keyword" id="keywordInput"
									value='${cri.keyword }' placeholder="Enter Search keywords..."
									size="25">
								<button id='searchBtn' class="btn-default">
									<i class="fa fa-search"></i>
								</button>
							</div>

							<div class="col-sm-12 text-center">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li><a
											href="blackList${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
									</c:if>

									<c:forEach begin="${pageMaker.startPage }"
										end="${pageMaker.endPage }" var="idx">
										<li
											<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
											<a href="blackList${pageMaker.makeSearch(idx)}">${idx}</a>
										</li>
									</c:forEach>

									<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
										<li><a
											href="blackList${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
									</c:if>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section> --%>
		<section class="content typography">
			<div class="container">
				<div class="row sub_content">
					<div class="pricingBlock theme-color-pt">
						<!--  DARK-BLUE PRICE ITEM  -->
							<div class="pricingTable"><!-- BODY BOX-->
								<div class="pricingTable-header"><!-- HEADER BOX-->
									<span class="heading">내 문의 내역</span>
								</div><!--/ BODY BOX-->
								
								<div class="pricingContent">
									<!-- 추후 로그인 됐을때 나누기 -->
									<h2 align="center">문의 내역이 존재하지 않습니다.</h2>
									<div>
										<ul id="qnaCol">
											<li>제목</li>
											<li>문의날짜</li>
											<li>답변상태</li>
										</ul>
									</div>
									<div>
										<c:forEach var="qnaList" items="${qnaMyList}">
											<ul id="qnaCol1">
												<li>${qnaList.qna_title}</li>
													<li>
														<fmt:formatDate value="${qnaList.qna_date}" pattern="yyyy-MM-dd" />
													</li>
													<li>
														<c:choose>
															<c:when test="${qnaList.qna_state=='I'}">
																<span>처리중</span>
															</c:when>
															<c:when test="${qnaList.qna_state=='C'}">
																<span>답변완료</span>
															</c:when>
														</c:choose>
													</li>
											</ul>
										</c:forEach>
									</div>
								</div><!-- /  CONTENT BOX-->
							</div><!--/ BODY BOX-->
							<!-- BUTTON BOX -->
							<!-- 추후 관리자로그인일때 답변달기 버튼활성화로 수정 -->
							<!-- 
							<div class="pricingTable-sign-up">
								<a href="#" class="btn btn-block btn-default">BUY NOW!</a>
							</div>
							 -->
							<!-- BUTTON BOX END-->
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

	<script>
		$(function() {
			$('#searchBtn').on("click", function(event) {
				self.location = "blackList"
					+ '${pageMaker.makeQuery(1)}'
					+ "&searchType="
					+ $("select option:selected").val()
					+ "&keyword="
					+ $('#keywordInput').val();
			});
			
			// 모든 글의 a 태그에 마우스 오버 바인딩
			$('.article').mouseenter(function(event) {
				contentprev($(this).attr('id'), event);
			});
			
			$('.article').mouseleave(function(event) {
				event.preventDefault();
				$('.layer1').remove();
			})
			
			// 마우스 오버시 바인딩 될 function
			function contentprev(black_id, event) {
				$.ajax({
					type: 'GET',
					url: '/community/blackPreviewContent?black_id=' + black_id,
					dataType: 'text',
					success: function(data) {
						showlayer(data, event);
					}
				});
			}
			
			// showlayer 가 호출된 후 전달받은 마우스 이벤트의 좌표로 레이어를 이동
			function moveTooltip(event) {
				var posX = event.pageX;
				var posY = event.pageY + 20;
				
				$('.layer1').css({top: posY, left: posX});
			}
			
			// 기존 레이어를 삭제 후 새로 레이어를 생성
 			function showlayer(value, event) {
				
				$('.layer1').remove();
				$('<div class="layer1">  <b> 본문 내용 </b> : ' + value.replace(/\r\n/gi, '<br>') + '</div>').appendTo('body');
				moveTooltip(event);
			}
			
		});


	</script>
	<!-- Start Style Switcher -->
	<div class="switcher"></div>
	<!-- End Style Switcher -->
</body>
</html>