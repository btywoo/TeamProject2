<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mbti 홈페이지</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<<<<<<< HEAD
=======
	
>>>>>>> main
	<div style="width: 90%; justify-content: center; margin: 0 auto;">
		<div style="height: 500px;">
			<div class="container" 
				style="min-height: calc(100vh - 240px); padding: 100px 20px; display:flex; 
					flex-direction: column; align-items: center; text-align:center;">
				<div class="textArea">
					<h3 class="mb-3" style="color: #324448; font-weight: bold;">이제는 대부분 들어본 그 질문</h3>
					<h1 class="mb-3" style="font-weight: bold; color: #77baca;">"MBTI가 어떻게 되세요?"</h1>
					<p class="mb-3" style="color: #324448; font-weight: bold;">성격 테스트를 통해 자신의 성향과 행동에 대한 정확한 분석 결과를 확인해보세요.</p>
					<br>
					<button type="button" class="btn btn-primary test-create"
							style="background-color: #77baca; border-color: #77baca; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
			   						width: 200px; height: 100px; padding: 10px 30px; border: 1px solid transparent; border-radius: 60px; font-size: 25px;">
<<<<<<< HEAD
		  					
=======
>>>>>>> main
						검사 실시
			  		</button>
				</div>
			</div>
		</div>
		
		<hr>
		
		<div style="height: 450px;">
			<div class="container" 
				style="min-height: calc(100vh - 240px); padding: 100px 20px; display: flex; box-sizing: border-box; position: absolute; right: 0%;
				flex-direction: column; align-items: center; text-align:center;">
				<div class="textArea">
					<h1 class="mb-3" style="font-weight: bold; color: #77baca;">MBTI의 유형이 궁금하다면?</h1>
					<p class="mb-3" style="color: #324448; font-weight: bold;">성격 분석 결과를 확인해 자신과 친구들의 성향을 확인해보세요.</p>
					<br>
					<button type="button" class="btn btn-primary personality_type" onclick="location.href='/project2/personality_type'"
							style="background-color: #77baca; border-color: #77baca; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
			   						width: 200px; height: 100px; padding: 10px 30px; border: 1px solid transparent; border-radius: 60px; font-size: 25px;">
<<<<<<< HEAD
		  					
=======
>>>>>>> main
						성격 유형 보러 가기
			  		</button>
				</div>
			</div>
			<div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 17.5%; margin: 50px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M16.385,8l1.5-3.331A2,2,0,0,0,16,2H13V0H11V2H8a2,2,0,0,0-1.634.847,2.031,2.031,0,0,0-.22,1.9L7.614,8H6v2H18V8ZM22,24H2V23a3,3,0,0,1,3-3H19a3,3,0,0,1,3,3ZM5.393,18a27.874,27.874,0,0,0,2.193-6h8.828a27.819,27.819,0,0,0,2.193,6Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 27.5%; margin: 50px 0 0 0 ;">
					<svg id="Layer_1" height="50" viewBox="0 0 24 24" width="50" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1">
						<path style="fill : #77baca;" d="m5.868 15.583a8.938 8.938 0 0 1 -2.793-7.761 9 9 0 1 1 14.857 7.941 5.741 5.741 0 0 0 -1.594 2.237h-3.338v-7.184a3 3 0 0 0 2-2.816 1 1 0 0 0 -2 0 1 1 0 0 1 -2 0 1 1 0 0 0 -2 0 3 3 0 0 0 2 2.816v7.184h-3.437a6.839 6.839 0 0 0 -1.695-2.417zm2.132 4.417v.31a3.694 3.694 0 0 0 3.69 3.69h.62a3.694 3.694 0 0 0 3.69-3.69v-.31z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 37.5%; margin: 50px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M12,17a4,4,0,1,1,4-4A4,4,0,0,1,12,17Zm6,4a3,3,0,0,0-3-3H9a3,3,0,0,0-3,3v3H18ZM18,8a4,4,0,1,1,4-4A4,4,0,0,1,18,8ZM6,8a4,4,0,1,1,4-4A4,4,0,0,1,6,8Zm0,5A5.968,5.968,0,0,1,7.537,9H3a3,3,0,0,0-3,3v3H6.349A5.971,5.971,0,0,1,6,13Zm11.651,2H24V12a3,3,0,0,0-3-3H16.463a5.952,5.952,0,0,1,1.188,6Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 47.5%; margin: 50px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
  						<path style="fill : #77baca;" d="M20.722,24c-.256,0-.512-.098-.707-.293-.391-.391-.391-1.023,0-1.414,1.28-1.28,1.985-2.982,1.985-4.793s-.705-3.513-1.985-4.793c-.391-.391-.391-1.023,0-1.414s1.023-.391,1.414,0c1.658,1.657,2.571,3.862,2.571,6.207s-.913,4.55-2.571,6.207c-.195,.195-.451,.293-.707,.293Zm-2.135-3.093c1.879-1.879,1.879-4.936,0-6.814-.391-.391-1.023-.391-1.414,0s-.391,1.023,0,1.414c1.099,1.099,1.099,2.888,0,3.986-.391,.391-.391,1.023,0,1.414,.195,.195,.451,.293,.707,.293s.512-.098,.707-.293Zm-10.587,.093h.494c2.499,0,4.63-1.868,4.957-4.345l.219-1.655h.33c1.299,0,2-1.03,2-2,0-1.42-2.932-7.015-4.2-8.581C9.363,1.164,5.497-.449,1.452,.106c-.219,.029-.435,.066-.649,.109-.467,.094-.803,.504-.803,.98V23c0,.553,.448,1,1,1H5c1.654,0,3-1.346,3-3Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 17.5%; margin: 150px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="m4,20h18v4H4c-1.105,0-2-.895-2-2s.895-2,2-2ZM22,2v16H4c-.738-.001-1.451.271-2,.765V3c0-1.657,1.343-3,3-3h15c1.105,0,2,.895,2,2Zm-12.5,5.5l2-1-2-1-1-2-1,2-2,1,2,1,1,2,1-2Zm9.5,4l-2.333-1.167-1.167-2.333-1.167,2.333-2.333,1.167,2.333,1.167,1.167,2.333,1.167-2.333,2.333-1.167Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 27.5%; margin: 150px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M1,24c-.552,0-1-.447-1-1V4C0,1.794,1.794,0,4,0H21.998c1.6-.055,2.604,1.958,1.598,3.203l-3.237,4.297,3.237,4.297c1.007,1.245,.003,3.258-1.598,3.203H2v8c0,.553-.448,1-1,1Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 37.5%; margin: 150px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Filled" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M20,0H4A4,4,0,0,0,0,4V16a4,4,0,0,0,4,4H6.9l4.451,3.763a1,1,0,0,0,1.292,0L17.1,20H20a4,4,0,0,0,4-4V4A4,4,0,0,0,20,0ZM7,5h5a1,1,0,0,1,0,2H7A1,1,0,0,1,7,5ZM17,15H7a1,1,0,0,1,0-2H17a1,1,0,0,1,0,2Zm0-4H7A1,1,0,0,1,7,9H17a1,1,0,0,1,0,2Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 47.5%; margin: 150px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M12,17c-2.76,0-5-2.24-5-5s2.24-5,5-5,5,2.24,5,5-2.24,5-5,5Zm1-13V1c0-.55-.45-1-1-1s-1,.45-1,1v3c0,.55,.45,1,1,1s1-.45,1-1Zm0,19v-3c0-.55-.45-1-1-1s-1,.45-1,1v3c0,.55,.45,1,1,1s1-.45,1-1ZM5,12c0-.55-.45-1-1-1H1c-.55,0-1,.45-1,1s.45,1,1,1h3c.55,0,1-.45,1-1Zm19,0c0-.55-.45-1-1-1h-3c-.55,0-1,.45-1,1s.45,1,1,1h3c.55,0,1-.45,1-1ZM6.71,6.71c.39-.39,.39-1.02,0-1.41l-2-2c-.39-.39-1.02-.39-1.41,0s-.39,1.02,0,1.41l2,2c.2,.2,.45,.29,.71,.29s.51-.1,.71-.29Zm14,14c.39-.39,.39-1.02,0-1.41l-2-2c-.39-.39-1.02-.39-1.41,0s-.39,1.02,0,1.41l2,2c.2,.2,.45,.29,.71,.29s.51-.1,.71-.29Zm-16,0l2-2c.39-.39,.39-1.02,0-1.41s-1.02-.39-1.41,0l-2,2c-.39,.39-.39,1.02,0,1.41,.2,.2,.45,.29,.71,.29s.51-.1,.71-.29ZM18.71,6.71l2-2c.39-.39,.39-1.02,0-1.41s-1.02-.39-1.41,0l-2,2c-.39,.39-.39,1.02,0,1.41,.2,.2,.45,.29,.71,.29s.51-.1,.71-.29Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 17.5%; margin: 250px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M14,24a5.952,5.952,0,0,1-4.242-1.758,6.025,6.025,0,0,1,0-8.484L14,9.261l4.263,4.517a6.029,6.029,0,0,1-.021,8.464h0A5.952,5.952,0,0,1,14,24ZM5,12a4.968,4.968,0,0,1-3.535-1.465,5.022,5.022,0,0,1,0-7.07L5,.007l3.527,3.45a5.02,5.02,0,0,1,.008,7.078A4.965,4.965,0,0,1,5,12Zm15-2a3.973,3.973,0,0,1-2.828-1.172,4.017,4.017,0,0,1,0-5.656L19.982.049,22.86,3.205a4.02,4.02,0,0,1-.032,5.623h0A3.973,3.973,0,0,1,20,10Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 27.5%; margin: 250px 0 0 0 ;">
					<svg id="Layer_1" height="50" viewBox="0 0 24 24" width="50" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1">
						<path style="fill : #77baca;" d="m15.829 2a3.006 3.006 0 0 0 -2.829-2h-2a3.006 3.006 0 0 0 -2.829 2h-5.171v19a3 3 0 0 0 3 3h12a3 3 0 0 0 3-3v-19zm-7.829 6h3v-3h2v3h3v2h-3v3h-2v-3h-3zm5 13h-6v-2h6zm4-4h-10v-2h10z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 37.5%; margin: 250px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M3,21.976a1,1,0,0,1-1-1V0H0V20.976a3,3,0,0,0,3,3H24v-2Z"/>
						<rect style="fill : #77baca;" x="5" y="12" width="2" height="7"/>
						<rect style="fill : #77baca;" x="10" y="10" width="2" height="9"/>
						<rect style="fill : #77baca;" x="15" y="13" width="2" height="6"/>
						<rect style="fill : #77baca;" x="20" y="9" width="2" height="10"/>
						<polygon style="fill : #77baca;" points="11 4.414 16 9.414 23.707 1.707 22.293 0.293 16 6.586 11 1.586 5.293 7.293 6.707 8.707 11 4.414"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 47.5%; margin: 250px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Capa_1" x="0px" y="0px" viewBox="0 0 512.047 512.047" xml:space="preserve" width="50" height="50">
					<g>
						<circle style="fill : #77baca;" cx="192" cy="128.024" r="128"/>
						<path style="fill : #77baca;" d="M192,298.69C86.015,298.82,0.129,384.705,0,490.69c0,11.782,9.551,21.333,21.333,21.333h341.333   c11.782,0,21.333-9.551,21.333-21.333C383.871,384.705,297.985,298.82,192,298.69z"/>
						<path style="fill : #77baca;" d="M469.333,168.024c-24.717,1.231-43.79,22.211-42.667,46.933c1.123-24.722-17.949-45.702-42.667-46.933   c-24.717,1.231-43.79,22.211-42.667,46.933c0,36.907,48.128,80.149,72.107,99.392c7.731,6.19,18.722,6.19,26.453,0   c23.979-19.2,72.107-62.485,72.107-99.392C513.123,190.234,494.051,169.255,469.333,168.024z"/>
					</g>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 17.5%; margin: 350px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
					  <path style="fill : #77baca;" d="m23.737,5.48c-.131-.457-1.126-1.18-1.946-.36-.82.82-3.316,3.316-3.316,3.316-.787.787-2.074.764-2.853-.036-.799-.779-.824-2.067-.037-2.854,0,0,2.496-2.496,3.316-3.316.82-.82.097-1.815-.36-1.946-.748-.214-1.523-.308-2.317-.279-3.773.134-6.953,3.199-7.207,6.965-.045.665-.005,1.317.117,1.95.182.94-.163,1.905-.84,2.583L.87,18.906c-1.162,1.163-1.155,3.059-.007,4.231,1.172,1.149,3.068,1.156,4.231-.006l7.424-7.404c.677-.677,1.642-1.022,2.583-.84.633.122,1.285.162,1.95.117,3.767-.254,6.831-3.434,6.965-7.207.028-.794-.065-1.569-.279-2.317Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 27.5%; margin: 350px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Filled" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M11.122,12.536a3,3,0,0,0-4.244,0l-6.84,6.84A4.991,4.991,0,0,0,5,24H19a4.969,4.969,0,0,0,2.753-.833Z"/>
						<circle style="fill : #77baca;" cx="18" cy="6" r="2"/>
						<path style="fill : #77baca;" d="M19,0H5A5.006,5.006,0,0,0,0,5V16.586l5.464-5.464a5,5,0,0,1,7.072,0L23.167,21.753A4.969,4.969,0,0,0,24,19V5A5.006,5.006,0,0,0,19,0ZM18,10a4,4,0,1,1,4-4A4,4,0,0,1,18,10Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 37.5%; margin: 350px 0 0 0 ;">
					<svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" data-name="Layer 1" viewBox="0 0 24 24" width="50" height="50">
						<path style="fill : #77baca;" d="M15,22.281l-6,1.5V1.924l6-1.61ZM7,1.417,4.155.233A3,3,0,0,0,0,3V21.754l7,2Zm14.867.2L17.515.155A3.022,3.022,0,0,0,17,.036V22.273l7,1.705V4.483A3,3,0,0,0,21.867,1.612Z"/>
					</svg>
				</div>
				<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; left: 47.5%; margin: 350px 0 0 0 ;">
					<svg id="Layer_1" height="50" viewBox="0 0 24 24" width="50" xmlns="http://www.w3.org/2000/svg" data-name="Layer 1">
						<path style="fill : #77baca;" d="m22.554.923a3.978 3.978 0 0 0 -3.291-.853l-9.184 1.722a5 5 0 0 0 -4.079 4.914v9.85a3.959 3.959 0 0 0 -2-.556 4 4 0 1 0 4 4v-9.124a2 2 0 0 1 1.632-1.966l11.183-2.1a1 1 0 0 1 1.185.99v5.76a3.959 3.959 0 0 0 -2-.56 4 4 0 1 0 4 4v-13a3.987 3.987 0 0 0 -1.446-3.077z"/>
					</svg>
				</div>
			</div>
<<<<<<< HEAD
			
=======
>>>>>>> main
		</div>
		
		<hr>
		
		<div style="height: 450px; justify-content: center; align-items: center;">
			<div class="container" 
				style="min-height: calc(100vh - 240px); padding: 100px 20px; display: flex; box-sizing: border-box; position: absolute; left: 0%;
				flex-direction: column; align-items: center; text-align:center; width: 60%;">
				<h1 class="mb-3" style="font-weight: bold; color: #77baca;">다른 MBTI들과 대화하고 싶다면?</h1>
				<p class="mb-3" style="color: #324448; font-weight: bold;">토론방에 모여서 함께 얘기를 나눠봐요.</p>
				<br>
				<button type="button" class="btn btn-primary discuss" onclick="location.href='/project2/discussion'"
						style="background-color: #77baca; border-color: #77baca; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
		   						width: 250px; height: 80px; padding: 10px 30px; border: 1px solid transparent; border-radius: 60px; font-size: 25px;">
<<<<<<< HEAD
	  					
=======
>>>>>>> main
					토론에 참여하기
		  		</button>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 15%; margin: 100px 0;">
				<div style="max-width: 200px; color: #324448; background: #cadff1; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0; word-break:keep-all;">깻잎 떼어주는 건 안 되지</div>
				<div style="max-width: 200px; color: white; background: #617c92; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 40px 80px; word-break:keep-all;">아니 왜? 그럴 수 있는 거 아니야?</div>
				<div style="max-width: 200px; color: #324448; background: #cadff1; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; word-break:keep-all;">그거 생각할 시간에 이미 하나 더 먹었음ㅋㅋ</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 30%; margin: 0 30px;">
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">장기자랑 10분이 뭐가 어려운데</div>
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 30px 80px; word-break:keep-all;">나였으면 친구 안 만남</div>
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; word-break:keep-all;">전화나 문자는 된다며</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 30%; margin: 370px 200px 0 0;">
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">머리가 뭐가 중요한데</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 20%; margin: 250px 300px 0 0;">
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">난 그게 스트레스라고;</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: -10%; margin: 15px 400px 0 0;">
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">여행 갈 때 제일 중요한게 계획 아니냐? 너네 어디서 몇 시에 뭐 타고 갈건데?</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 5%; margin: 20px 400px 0 0;">
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">에바임 기각</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: -10%; margin: 350px 400px 0 0;">
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">그럴거면 그냥 다 불러서 같이 놀 거 같은데</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	<script type="text/javascript">
		$('.test-create').click(function(){
			if('${user.me_id}' == ''){
				if(confirm('검사는 회원만 진행가능합니다.\n로그인 하시겠습니까?')){
					location.href = '<c:url value="/login"/>';
				}
				return;
			}
			$.ajax({
				async : false,
				url : '<c:url value="/test/create"/>',
				method : "get",
				success : function(data){
					var te_num = data.te_num;
					var url = "<c:url value="/test/list?te_num="/>"+te_num;
					location.href = url;
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
	</script>
</body>
</html>