<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style type="text/css">
		.navbar .logo img {
			width: 243.75px;
			height: 50px;
		}
		
		/* 스타일을 통해 메뉴바를 페이지 상단에 고정합니다 */
		#navbar {
			position: sticky;
			top: 0;
			left: 0;
			width: 100%;
			height: 80px;
			background-color: #e2f2f7;
			padding: 20px;
			/* box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); */
			z-index: 1000; /* 페이지의 다른 요소들 위에 보이도록 설정 */
			justify-content: space-between;
		}
		
		.navbar-nav .nav-item {
			font-weight: bold;
			cursor: pointer;
			color: #2c5d67;
			display: flex;
			justify-content: center;
		}
		
		#nav-center {
			width: 320px;
			display: flex;
			justify-content: space-between;
		}
		
		#nav-right {
			width: 200px;
			display: flex;
			justify-content: space-between;
		}
		
		#nav-center li,  #nav-right li{
			position: relative;
		}
		
		#nav-center li ~ li::before{
			content: '';
			position: absolute;
			width: 2px;
			height: 16px;
			background-color: gray;
			left: -15px; top: 12px;
		}
		
		#circle{
			position: relative;
			width: 4px; height: 4px; background-color: gray;
			border-radius: 50%;
			top: 17px;
		}
		
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-light" id="navbar">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<a class="navbar-brand logo" href="<c:url value="/"/>"> 
					<img src="https://www.16personalities.com/static/images/system/logo.svg" alt="logo">
				</a>
			</li>
		</ul>
		<ul class="navbar-nav" id="nav-center">
			<li class="nav-item">
				<a class="nav-link test-create" href="#">검사 실시</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<c:url value="/personality_type"/>">성격 유형</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<c:url value="/discussion"/>">토론 참여</a>
			</li>
		</ul>
		<ul class="navbar-nav">
			<c:if test="${user eq null}">
				<li class="nav-item">
					<div class="mt-1">
						<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="17.5" height="15"><circle style="fill:#2c5d67;" cx="9" cy="6" r="6"/><path style="fill:#2c5d67;" d="M13.043,14H4.957A4.963,4.963,0,0,0,0,18.957V24H18V18.957A4.963,4.963,0,0,0,13.043,14Z"/><polygon style="fill:#2c5d67;" points="21 10 21 7 19 7 19 10 16 10 16 12 19 12 19 15 21 15 21 12 24 12 24 10 21 10"/></svg>
					</div>
					<a class="nav-link" href="<c:url value="/signup"/>">회원가입</a>
				</li>
					<div id="circle" style="margin: 0 10px 0 4px;"></div>					
				<li class="nav-item">
					<div class="mt-1">
						<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="17.5" height="15"><path style="fill:#2c5d67;" d="M16.043,14H7.957A4.963,4.963,0,0,0,3,18.957V24H21V18.957A4.963,4.963,0,0,0,16.043,14Z"/><circle style="fill:#2c5d67;" cx="12" cy="6" r="6"/></svg>
					</div>
					<a class="nav-link" href="<c:url value="/login"/>">로그인</a>
				</li>
			</c:if>
			<c:if test="${user ne null}">
				<li class="nav-item">
					<div class="mt-1">
<<<<<<< HEAD
						<svg xmlns="http://www.w3.org/2000/svg" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="17.5" height="15">
=======
						<svg xmlns="http://www.w3.org/2000/svg" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="20" height="17">
>>>>>>> main
							<g>
								<path style="fill: #2c5d67;" d="M34.283,384c17.646,30.626,56.779,41.148,87.405,23.502c0.021-0.012,0.041-0.024,0.062-0.036l9.493-5.483   c17.92,15.332,38.518,27.222,60.757,35.072V448c0,35.346,28.654,64,64,64s64-28.654,64-64v-10.944   c22.242-7.863,42.841-19.767,60.757-35.115l9.536,5.504c30.633,17.673,69.794,7.167,87.467-23.467   c17.673-30.633,7.167-69.794-23.467-87.467l0,0l-9.472-5.461c4.264-23.201,4.264-46.985,0-70.187l9.472-5.461   c30.633-17.673,41.14-56.833,23.467-87.467c-17.673-30.633-56.833-41.14-87.467-23.467l-9.493,5.483   C362.862,94.638,342.25,82.77,320,74.944V64c0-35.346-28.654-64-64-64s-64,28.654-64,64v10.944   c-22.242,7.863-42.841,19.767-60.757,35.115l-9.536-5.525C91.073,86.86,51.913,97.367,34.24,128s-7.167,69.794,23.467,87.467l0,0   l9.472,5.461c-4.264,23.201-4.264,46.985,0,70.187l-9.472,5.461C27.158,314.296,16.686,353.38,34.283,384z M256,170.667   c47.128,0,85.333,38.205,85.333,85.333S303.128,341.333,256,341.333S170.667,303.128,170.667,256S208.872,170.667,256,170.667z"/>
							</g>
						</svg>
					</div>
					<a class="nav-link" href="<c:url value="/mypage"/>">마이페이지</a>
				</li>
				<div id="circle" style="margin: 0 15px 0 4px;"></div>				
				<li class="nav-item">
					<div class="mt-1">
						<svg xmlns="http://www.w3.org/2000/svg" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" width="17.5" height="15">
							<g>
								<path style="fill: #2c5d67;" d="M170.698,448H72.757c-4.814-0.012-8.714-3.911-8.725-8.725V72.725c0.012-4.814,3.911-8.714,8.725-8.725h97.941   c17.673,0,32-14.327,32-32s-14.327-32-32-32H72.757C32.611,0.047,0.079,32.58,0.032,72.725v366.549   C0.079,479.42,32.611,511.953,72.757,512h97.941c17.673,0,32-14.327,32-32S188.371,448,170.698,448z"/>
								<path style="fill: #2c5d67;" d="M483.914,188.117l-82.816-82.752c-12.501-12.495-32.764-12.49-45.259,0.011s-12.49,32.764,0.011,45.259l72.789,72.768   L138.698,224c-17.673,0-32,14.327-32,32s14.327,32,32,32l0,0l291.115-0.533l-73.963,73.963   c-12.042,12.936-11.317,33.184,1.618,45.226c12.295,11.445,31.346,11.436,43.63-0.021l82.752-82.752   c37.491-37.49,37.491-98.274,0.001-135.764c0,0-0.001-0.001-0.001-0.001L483.914,188.117z"/>
							</g>
						</svg>
					</div>
					<a class="nav-link" href="<c:url value="/logout"/>">로그아웃</a>
				</li>
			</c:if>
		</ul>
	</nav>
	
	<script type="text/javascript">
		//메뉴바가 최상단일 경우 박스쉐도우를 비활성화
		$(window).on('scroll', function(){
			if(window.scrollY > 1){
				$('.navbar').css('boxShadow', '0 2px 5px rgba(0, 0, 0, 0.1)');
			}else{
				$('.navbar').css('boxShadow', 'none');
			}
		});
	</script>
</body>
</html>