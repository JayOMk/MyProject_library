<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" style="--main-color: #b9c2cf; --sub-color: #60a3e3; --light-color: #87b2ec; --button-color: #0c52af; --strong-color: #ffcc00; --customer-color: #5463d7; --category-color: #5199ee; --basic-color: #3c4f6f; --basic-bg-color: #242f42; --bg-color: #ecf5fd; --button-bg-color: #0a57bf; --headerImg-image: url(&quot;/images/header/winter.png&quot;);"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, target-densitydpi=medium-dpi">
<title>Green Library</title>
<link href="/images/Lib/favicon.ico" type="image/x-icon" rel="shortcut icon">
<link rel="stylesheet" href="/include/css/all.css">
<link rel="stylesheet" media="screen" href="/include/css/animate.css">
<link rel="stylesheet" href="/css/researchbook.css">
<link rel="stylesheet" type="text/css" href="/include/css/jquery.mmenu.all.css">
<script src="/include/js/wow.min.js"></script>
<script src="/include/js/jquery-3.1.1.min.js"></script>
<script src="/include/js/jquery-ui-1.12.1.js"></script>
<script type="text/javascript" src="/include/js/jquery.mmenu.min.all.js"></script>
<script src="/include/js/jquery.bxslider.min.js"></script>
<script src="/include/js/common.js"></script>
<script src="/include/js/popup.js"></script>
<!--<script src="/include/js/https.js"></script>-->

<script>
	new WOW().init();
</script>

<header id="header">
    <!-- 상단 검색영역 -->
    <div class="top-wrap d_width">
		<form id="Search" name="SearchForm" method="get" action="/search" onsubmit="return verifySearch(this);">
		<div class="search-wrap form-inline">
            <select name="srch_order" class="form-control">
                <option value="total" selected="">도서검색</option>
				<option value="title">서명</option>
				<option value="author">저자</option>
				<option value="publisher">출판사</option>
            </select>
            <input id="src_key" class="form-control" name="src_key" type="text" value="" placeholder=""><label hidden="" for="">검색</label>
            <a href="#" onclick="verifySearch_btn(SearchForm);" title="검색 버튼" class="search-btn"><i class="fa fa-search"></i></a>
       </div>
		</form>
	   <div class="topmn wow fadeInRight delay5" style="visibility: visible; animation-name: fadeInRight;">
	   </div>
    </div>
    <!-- //상단 검색영역 -->
</header>
	<div class="sub-container d_width">
	<!-- 신간도서 콘텐츠 -->
	<div class="body-title">신간도서</div>
	<!-- 상단 슬라이드 박스 -->
	<script type="text/javascript">
		$(document).ready(function(){
			slide_cont = $("#slide-wrap").bxSlider({
				controls: false,
				speed: 700,
				pager: false,
				pause: 8000,
				autoHover: true,
				minSlides: 1,
				maxSlides: 1,
				moveSlides: 1,
				auto: true,
				autoControls: false,
				slideSelector: ".slide-cont"
			});
		});
		function slide_cont_prev(){
			slide_cont.goToPrevSlide();	
		}	
		function slide_cont_next(){
			slide_cont.goToNextSlide();
		}
	</script>
	<div class="ebook-wrap">
		<div class="top">
					
			<div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 600.059px;"><div id="slide-wrap" style="width: 515%; position: relative; transition-duration: 0s; transform: translate3d(-1400px, 0px, 0px);"><div class="slide-cont inner clearfix bx-clone" style="float: left; list-style: none; position: relative; width: 1400px;">
					<a href="/ebook/detail/?goods_id=123169737" class="thumb thumb-v1">
						<img src="https://image.yes24.com/goods/123169737/L" onerror="this.src='/images/Lib/noimage.jpg'" alt="살아보니 한 끗 차이 : 한 끗, 그 얇은 경계선에서 우리는 선택하고 행동한다.">
					</a>
					<div class="info">
						<p class="tit"><a href="/ebook/detail/?goods_id=123169737">살아보니 한 끗 차이 : 한 끗, 그 얇은 경계선에서 우리는 선택하고 행동한다.</a></p>
						<p class="txt">이 책은 57년 된 여자 사람이? 딸로, 엄마로, 싱글맘으로, 워킹우먼으로 위태위태하게살아오면서 만났던?순간을 이야기로 그려낸?(생애 첫 번째 책)입니다.모든 것이 어두워 보였던 곳에서도 한 끗 차이로 세상은 밝아 보일 수 있습니다....</p>
						<dl class="detail clearfix">
							<dt>저자</dt>
							<dd>오현주 저</dd>
							<dt>출판사</dt>
							<dd>작가와</dd>
							<dt>출판일</dt>
							<dd>2023-10-24</dd>
						</dl>
					</div>
				</div>

				<div class="slide-cont inner clearfix" style="float: left; list-style: none; position: relative; width: 1400px;">
					<a href="/ebook/detail/?goods_id=116923003" class="thumb thumb-v1">
						<img src="https://image.yes24.com/goods/116923003/L" onerror="this.src='/images/Lib/noimage.jpg'" alt="제품의 탄생 : CEO, 경영진, 실무자가 꼭 읽어야 할 프로덕트 관리의 모든 것">
					</a>
					<div class="info">
						<p class="tit"><a href="/ebook/detail/?goods_id=116923003">제품의 탄생 : CEO, 경영진, 실무자가 꼭 읽어야 할 프로덕트 관리의 모든 것</a></p>
						<p class="txt">소프트웨어 엔지니어로 출발해 구글, 마이크로소프트, 라인, 스마트뉴스 등 글로벌 기업 PM으로 활약해온 세계 수준 프로덕트 매니저의 지혜와 경험을 한 권에 읽는다! 모든 기업의 PM(프로덕트 매니저)와 PO(프로덕트 오너)는 물론이고...</p>
						<dl class="detail clearfix">
							<dt>저자</dt>
							<dd>오이카와 다쿠야,소네하라 하루키,고시로 구미코 공저/강경민 역</dd>
							<dt>출판사</dt>
							<dd>책만</dd>
							<dt>출판일</dt>
							<dd>2023-01-16</dd>
						</dl>
					</div>
				</div>

				<div class="slide-cont inner clearfix" style="float: left; list-style: none; position: relative; width: 1400px;">
					<a href="/ebook/detail/?goods_id=118167963" class="thumb thumb-v1">
						<img src="https://image.yes24.com/goods/118167963/L" onerror="this.src='/images/Lib/noimage.jpg'" alt="디즈니 리더십 수업 : 테마파크 주차 요원을 글로벌기업경영자로 만든 21가지 성장 원칙">
					</a>
					<div class="info">
						<p class="tit"><a href="/ebook/detail/?goods_id=118167963">디즈니 리더십 수업 : 테마파크 주차 요원을 글로벌기업경영자로 만든 21가지 성장 원칙</a></p>
						<p class="txt">테마파크 방문객 세계 1위 유지, 사내 리더십 훈련 과정 운영…CEO, 임원, 팀장 등 모든 리더에게 바로 적용되는 실전 리더십 솔루션주차 요원으로 입사해 경영자까지 오른 전설의 디즈니맨,  지극히 평범했던 그가 초일류 기업 수장이 ...</p>
						<dl class="detail clearfix">
							<dt>저자</dt>
							<dd>댄 코커렐 저/박여진 역 </dd>
							<dt>출판사</dt>
							<dd>현대지성</dd>
							<dt>출판일</dt>
							<dd>2023-03-29</dd>
						</dl>
					</div>
				</div>

				<div class="slide-cont inner clearfix" style="float: left; list-style: none; position: relative; width: 1400px;">
					<a href="/ebook/detail/?goods_id=123169737" class="thumb thumb-v1">
						<img src="https://image.yes24.com/goods/123169737/L" onerror="this.src='/images/Lib/noimage.jpg'" alt="살아보니 한 끗 차이 : 한 끗, 그 얇은 경계선에서 우리는 선택하고 행동한다.">
					</a>
					<div class="info">
						<p class="tit"><a href="/ebook/detail/?goods_id=123169737">살아보니 한 끗 차이 : 한 끗, 그 얇은 경계선에서 우리는 선택하고 행동한다.</a></p>
						<p class="txt">이 책은 57년 된 여자 사람이? 딸로, 엄마로, 싱글맘으로, 워킹우먼으로 위태위태하게살아오면서 만났던?순간을 이야기로 그려낸?(생애 첫 번째 책)입니다.모든 것이 어두워 보였던 곳에서도 한 끗 차이로 세상은 밝아 보일 수 있습니다....</p>
						<dl class="detail clearfix">
							<dt>저자</dt>
							<dd>오현주 저</dd>
							<dt>출판사</dt>
							<dd>작가와</dd>
							<dt>출판일</dt>
							<dd>2023-10-24</dd>
						</dl>
					</div>
				</div>

			<div class="slide-cont inner clearfix bx-clone" style="float: left; list-style: none; position: relative; width: 1400px;">
					<a href="/ebook/detail/?goods_id=116923003" class="thumb thumb-v1">
						<img src="https://image.yes24.com/goods/116923003/L" onerror="this.src='/images/Lib/noimage.jpg'" alt="제품의 탄생 : CEO, 경영진, 실무자가 꼭 읽어야 할 프로덕트 관리의 모든 것">
					</a>
					<div class="info">
						<p class="tit"><a href="/ebook/detail/?goods_id=116923003">제품의 탄생 : CEO, 경영진, 실무자가 꼭 읽어야 할 프로덕트 관리의 모든 것</a></p>
						<p class="txt">소프트웨어 엔지니어로 출발해 구글, 마이크로소프트, 라인, 스마트뉴스 등 글로벌 기업 PM으로 활약해온 세계 수준 프로덕트 매니저의 지혜와 경험을 한 권에 읽는다! 모든 기업의 PM(프로덕트 매니저)와 PO(프로덕트 오너)는 물론이고...</p>
						<dl class="detail clearfix">
							<dt>저자</dt>
							<dd>오이카와 다쿠야,소네하라 하루키,고시로 구미코 공저/강경민 역</dd>
							<dt>출판사</dt>
							<dd>책만</dd>
							<dt>출판일</dt>
							<dd>2023-01-16</dd>
						</dl>
					</div>
				</div></div></div></div>
			<div class="control">
				<a href="javascript:void(0)" onclick="slide_cont_prev()" class="prev"></a>
				<a href="javascript:void(0)" onclick="slide_cont_next()" class="next"></a>
			</div>
		</div>
	</div>
	<!-- //상단 슬라이드 박스 -->

<script language="JavaScript">
function yes24_ios(lib_id,user_id,goods_id,ebook_id,device_type,user_pw) {  
    var IpadUrl = "https://apps.apple.com/kr/app/id1584897771";  
	var IphoneUrl = "https://apps.apple.com/kr/app/id1584897771"; 
	if (window.confirm("예스24전자도서관 App이 설치되어 있으면 확인(승인)을 클릭 하시고.   \n설치되어 있지 않다면 취소를 클릭하세요(앱스토어로 이동)")) {        
		location.href = "yes24lib://read?lib_id="+lib_id+"&user_id="+user_id+"&password="+user_pw+"&goods_id="+goods_id+"&epub_id="+ebook_id+"&encrypt=0"; 
	} else {
		if (device_type == "IPad"){
			location.href = IpadUrl; 
		}
		else if (device_type == "iphone"){
			location.href = IphoneUrl; 
		}
	}     
}

</script>	

	<div class="total">전체 <em>305</em>건 ( 1 / 31 )</div>
	<div class="tab-list">
		<ul class="clearfix">
			<li><a href="/ebook/?mode=new&amp;sort=title&amp;cate_id=&amp;page_num=1#list_tab">제목순</a></li>
			<li><a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=1#list_tab" class="on">출판일순</a></li>
			<li><a href="/ebook/?mode=new&amp;sort=now&amp;cate_id=&amp;page_num=1#list_tab">대출가능도서</a></li>
		</ul>
	</div>
	<!-- 도서리스트 -->
	<div class="ebook-list">

		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123648519" title="오늘도 화학 : 식품부터 최첨단 기술까지, 75가지 화학 이야기" class="thumb">
				<img src="https://image.yes24.com/goods/123648519/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="오늘도 화학 : 식품부터 최첨단 기술까지, 75가지 화학 이야기">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1723589');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[자연과과학]</strong> <a href="/ebook/detail?goods_id=123648519">오늘도 화학 : 식품부터 최첨단 기술까지, 75가지 화학 이야기</a></p>
				<p class="writer">오타 히로미치 저/정한뉘 역</p>
				<p class="detail">
					<span>시프</span>
					<span>2023-12-01</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">오늘 입은 셔츠, 방금 먹은 샐러드, 손에 들고 있는 페트병까지,언제나 우리 곁에는 화학의 세계가 숨어 있다!일상에서...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123117667" title="남에게 보여주려고 인생을 낭비하지 마라 : 쇼펜하우어 소품집" class="thumb">
				<img src="https://image.yes24.com/goods/123117667/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="남에게 보여주려고 인생을 낭비하지 마라 : 쇼펜하우어 소품집">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1711677');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[인문／사회]</strong> <a href="/ebook/detail?goods_id=123117667">남에게 보여주려고 인생을 낭비하지 마라 : 쇼펜하우어 소품집</a></p>
				<p class="writer">아르투어 쇼펜하우어/저박제헌 역</p>
				<p class="detail">
					<span>페이지2</span>
					<span>2023-11-29</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">“얄팍한 행복 대신 단단한 외로움을 선택하라!”니체, 톨스토이, 아인슈타인에게 영감을 준 쇼펜하우어의 삶과 지혜에 대...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>1</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>예약가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123273824" title="역사는 반복된다" class="thumb">
				<img src="https://image.yes24.com/goods/123273824/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="역사는 반복된다">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1717539');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[인문／사회]</strong> <a href="/ebook/detail?goods_id=123273824">역사는 반복된다</a></p>
				<p class="writer">배기성 저</p>
				<p class="detail">
					<span>왕의서재</span>
					<span>2023-11-20</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">30만~100만이 열광한 [매불쇼] 배기성의 한국사 강의 완결판! (2023년 9월 현재) 128만 구독자를 보유한 ...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123664831" title="파이브 라인스 오브 코드 : 다섯 줄 제한 규칙으로 시작하는 체계적이고 효과적인 리팩터링 수련법" class="thumb">
				<img src="https://image.yes24.com/goods/123664831/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="파이브 라인스 오브 코드 : 다섯 줄 제한 규칙으로 시작하는 체계적이고 효과적인 리팩터링 수련법">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1725171');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[컴퓨터와인터넷]</strong> <a href="/ebook/detail?goods_id=123664831">파이브 라인스 오브 코드 : 다섯 줄 제한 규칙으로 시작하는 체계적이고 효과적인 리팩터링 수련법</a></p>
				<p class="writer">크리스찬 클라우젠 저/김성원 역</p>
				<p class="detail">
					<span>위키북스</span>
					<span>2023-11-20</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">구체적인 규칙에 초점을 맞춰 모든 메서드를 5줄 이하로 줄이는 리팩터링을 가르쳐 준다!기존 코드를 개선하는 것(리팩터...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123744307" title="사는게 뭐 별거냐" class="thumb">
				<img src="https://image.yes24.com/goods/123744307/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="사는게 뭐 별거냐">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1727848');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[문학]</strong> <a href="/ebook/detail?goods_id=123744307">사는게 뭐 별거냐</a></p>
				<p class="writer">조인순 저</p>
				<p class="detail">
					<span>큰솔북스</span>
					<span>2023-11-20</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">이 책은 5편의 단편소설을 모아서 옴니버스 형식으로 엮은 책입니다. 현대를 살아가는 우리의 현실과 이상과 갈등 해소 ...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123749748" title="전지적 푸바오 시점" class="thumb">
				<img src="https://image.yes24.com/goods/123749748/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="전지적 푸바오 시점">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1728126');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[문학]</strong> <a href="/ebook/detail?goods_id=123749748">전지적 푸바오 시점</a></p>
				<p class="writer">송영관 저/송영관,류정훈 사진</p>
				<p class="detail">
					<span>위즈덤하우스</span>
					<span>2023-11-20</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">“말해줘요, 오늘의 나를 얼마큼 사랑하는지.그럼 우리에게 오늘은 세상에서 가장 특별한 날이 되는 거예요!”푸바오의 작...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>2</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123254644" title="돈의 태도 : 평범한 사람 30명이  경제적 자유를 얻어낸 비밀 8가지" class="thumb">
				<img src="https://image.yes24.com/goods/123254644/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="돈의 태도 : 평범한 사람 30명이  경제적 자유를 얻어낸 비밀 8가지">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1716714');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[경제／경영]</strong> <a href="/ebook/detail?goods_id=123254644">돈의 태도 : 평범한 사람 30명이  경제적 자유를 얻어낸 비밀 8가지</a></p>
				<p class="writer">조너선 클레먼츠 저/박덕근 역 </p>
				<p class="detail">
					<span>동양북스(동양books)</span>
					<span>2023-11-17</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">조기 은퇴를 하고, 어렸을 때 추억이 깃든 별장을 사고, 내가 원하는 일을 원할 때 선택할 수 있는 삶‘돈의 태도’로...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123702030" title="AI 2024 트렌드&amp;활용백과 : AI의 대전환을 미리 준비하는 최고급 코스!" class="thumb">
				<img src="https://image.yes24.com/goods/123702030/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="AI 2024 트렌드&amp;활용백과 : AI의 대전환을 미리 준비하는 최고급 코스!">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1727587');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[경제／경영]</strong> <a href="/ebook/detail?goods_id=123702030">AI 2024 트렌드&amp;활용백과 : AI의 대전환을 미리 준비하는 최고급 코스!</a></p>
				<p class="writer">김덕진 저 </p>
				<p class="detail">
					<span>스마트북스</span>
					<span>2023-11-17</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">2024년,AI의 대전환을 미리 준비하는 최고급 코스!네이버, 구글, MS, 오픈AI 등 빅테크 기업들의 최신 전략 ...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123703287" title="반드시 해낼 거라는 믿음" class="thumb">
				<img src="https://image.yes24.com/goods/123703287/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="반드시 해낼 거라는 믿음">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1727614');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[자기관리]</strong> <a href="/ebook/detail?goods_id=123703287">반드시 해낼 거라는 믿음</a></p>
				<p class="writer">전대진 저 </p>
				<p class="detail">
					<span>마인드셋(Mindset)</span>
					<span>2023-11-17</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">삶으로 살아낸 이야기만 전함으로써 자타가 인정하는 ‘삶쟁이’, 출간 도서 누적 판매 10만 부 이상, 매년 1,000...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
		<div class="bx clearfix"> <!-- 도서리스트 -->
			<a href="/ebook/detail?goods_id=123705452" title="위로하는 오름 Ⅰ" class="thumb">
				<img src="https://image.yes24.com/goods/123705452/M" onerror="this.src='/images/Lib/noimage.jpg'" alt="위로하는 오름 Ⅰ">
			</a>

			<a href="javascript:openEBookPreview('http://epreview.yes24.com/preview/viewer/viewer.html?ebookcode=1727681');" onfocus="this.blur();" class="btn-preview">미리보기</a> <!-- 도서미리보기 버튼 -->

			<div class="info">
				<p class="tit"><strong>[문학]</strong> <a href="/ebook/detail?goods_id=123705452">위로하는 오름 Ⅰ</a></p>
				<p class="writer">오름 저</p>
				<p class="detail">
					<span>e퍼플</span>
					<span>2023-11-17</span>
					<span>예스이십사</span>
				</p>
				<p class="txt">이 책은 삶의 어려움을 극복하기 위한 힘을 얻기를 원하는 이들에게 작은 위로와 도움을 주기 위해 쓰였습니다. 삶의 한...</p>
				<div class="stat">
					<ul class="clearfix">
						<li>보유 <strong>1</strong></li>
						<li>대출 <strong>0</strong></li>
						<li>예약 <strong>0</strong></li>
<!--						<li>누적대출 <strong>2</strong></li>
						<li>누적대출 <strong>2</strong></li> -->
					</ul>
				</div>
			</div>
			<div class="btn-wrap">
				
				<a href="javascript:#" onclick="alert('로그인 후 이용 가능합니다.'); location.href='/member/?mode=login'; return false;" class="btn-d btn-main" title="도서상태(비 로그인시 로그인페이지로 이동합니다.)"><span>대출가능</span></a>
				
			</div>
		</div>
			
	</div>
	<!-- //도서리스트 -->

	<div class="board-paging">

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=1#list_tab" class="on">1</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=2#list_tab" title="2 페이지">2</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=3#list_tab" title="3 페이지">3</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=4#list_tab" title="4 페이지">4</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=5#list_tab" title="5 페이지">5</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=6#list_tab" title="6 페이지">6</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=7#list_tab" title="7 페이지">7</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=8#list_tab" title="8 페이지">8</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=9#list_tab" title="9 페이지">9</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=10#list_tab" title="10 페이지">10</a>

		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=11#list_tab" class="next" title="다음 페이지"></a>
		<a href="/ebook/?mode=new&amp;sort=pubdt&amp;cate_id=&amp;page_num=31#list_tab" class="last" title="다음 10페이지"></a>

	</div>
	

	<!-- //신간도서 콘텐츠 -->
	</div>
<form name="action_form" method="post" action="/action/" target="process">
	<input type="hidden" name="goods_id">
	<input type="hidden" name="action_mode">
	<input type="hidden" name="content_sort" value="017">
	<input type="hidden" name="return_url" value="/ebook/?mode=new">
</form>
				

</div><div id="maside" style="display: none;">
	<p class="tit"><span>QUICK</span>SERVICE</p>
	<ul>
		<li><a class="ico ico1" href="/mylibrary?mode=1" title="대출현황 페이지로 이동합니다.">대출현황</a></li>
		<li><a class="ico ico2" href="/mylibrary?mode=2" title="예약현황 페이지로 이동합니다.">예약현황</a></li>
		<li><a class="ico ico3" href="/info/?mode=3" title="이용안내 페이지로 이동합니다.">모바일<br>이용안내</a></li>
	</ul>
	<a href="#header" class="top-btn">TOP</a>
</div><div id="maside-open" class=""> 
	<a href="javascript:void(0);" onclick="mobile_aside();" title="메뉴 오픈"></a>
</div></div>




<script>
function mobile_aside() {
		if($("#maside-open").hasClass("on")) {
			$("#maside-open").removeClass("on");
			$("#maside").css({
				"display" : "none",
			});
		} else {
			$("#maside-open").addClass("on");
			$("#maside").css({
				"display" : "block",

			});
		}
	}
window.onresize = function() {
		var browser_width = jQuery(window).width();
		if(browser_width > 1670) {
			$("#maside").css({
				"display" : "block",

			});
		} else {
			$("#maside").css({
				"display" : "none",

			});
		}
	}
</script>
			<footer>
				<div class="fmn">
					<div class="d_width">
						<ul class="clearfix">
						</ul>
					</div>
				</div>
				<div id="address" class="d_width">
					<p>(123456) 부산 부산진구 중앙대로 730 서면역 1호선 
					  <span class="mlp20">TEL. 012-345-6789</span>
					  <span class="mlp20">FAX. 012-345-6789</span>
					</p>
					<p>COPYRIGHT ⓒ YES24. ALL RIGHTS RESERVED.</p>
				</div>
				
			<iframe title="process" frameborder="0" marginheight="0" marginwidth="0" leftmargin="0" topmargin="0" name="process" height="1" width="1"></iframe>
			</footer>


			<div id="mm-blocker" class="mm-slideout">
	</body>
</html>