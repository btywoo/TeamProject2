<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

	<style type="text/css">
		.error{color:red; margin-bottom: 5px;}
		.container-body{padding: 30px; margin-top: 30px;}
		.input-group-text{width:90px;} 
		.update{width: 770px;}
		.nav-pills li {cursor: pointer; font-weight: bold;}
		.container-item{display: none; margin: 0 auto;}
		.pt-code{display: flex; justify-content: space-between; flex-wrap: wrap; height: 100px;}
		.pt-content{width: 100%; min-height: 400px; border-top: 1px solid #17A2B8; }
		.pt-content-text{width: 100%; min-height: 400px; margin-top: 20px; display: none;}
		.btn-pt{width: 12%; height: 40px;}
		.sub-title{color: blue; }
		#btn-update-pt{margin: 10px 0; display: none;}
		.qu-type{display: flex; justify-content: space-between; flex-wrap: wrap;}
		.btn-qu{width: 24%;}
		.btn-icon{line-height: 16px; width: 42px; height: 38px;}
		.question-list, .discussion-list, .pt-content{max-height:800px; overflow: auto;}
		
		.description{
	        margin: 0 auto;         
	        font-size: 1.125rem;
	        line-height: 1.33333333;
	        letter-spacing: -.1px;
	    }
	    .description h1, h2{
			font-weight: 800;
		}	
	    .description hr{
	        border: 0; height: 1px; background-color: rgb(235, 233, 233);
	    }
	    .description blockquote{
	        margin: 20px 0;
	        border-left: 3px solid #4298B4;
	        padding: 5px 0 5px 10px;   
	        display: block;       
	    }
	    .description blockquote p, footer{
	        margin-block-start: 1em;
	        margin-block-end: 1em;
	        margin-inline-start: 20px;
	        margin-inline-end: 20px;
	    }
	    .description blockquote p {                   
	        font-style: normal;        
	        font-weight: 680;
	        font-size: 1.375rem;
	        line-height: 1.27272727;
	        letter-spacing: -.05px;
	    }
	    .description blockquote footer {             
	        color: #787f8d;
	        font-size: 1rem;
	        line-height: 1.375;
	        letter-spacing: -.1px;
	        margin-top: 10px;
	    }
	    .description-pullout{        
	        border-left: 3px solid #88619a;
	        font-size: 1.125rem;
	        line-height: 1.33333333;
	        letter-spacing: -.1px;
	        padding: 10px 20px;
	        margin-top: 20px;
	        margin-bottom: 20px;
	        background-color: #f3eff5;       
	    }
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<div class="container pt-3" style="min-height: calc(100vh - 240px)">
		<h3 class="title text-center mt-3 mb-4">회원정보</h3>
		<div class="row">
	    	<div class="col-sm-2">
	      		<ul class="nav nav-pills flex-column">
	        		<li class="nav-item">
	          			<div class="nav-link item-link active" data-target="update" id="update">회원정보</div>
	        		</li>
	        		<li class="nav-item">
	          			<div class="nav-link item-link" data-target="result" id="result">검사결과</div>
	        		</li>
	        		<c:if test="${user.me_authority eq 'ADMIN'}">
	        			<li class="nav-item">
		          			<div class="dropdown">
							    <div class="nav-link dropdown-toggle" data-toggle="dropdown">관리</div>
							    <div class="dropdown-menu">
							      	<div class="dropdown-item item-link" data-target="p-type">성격유형</div>
							      	<div class="dropdown-item item-link" data-target="question">검사문항</div>
							    	<div class="dropdown-item item-link" data-target="topic">토론방</div>
							 	</div>
							 </div>
		        		</li>
	        		</c:if>
     			</ul>
	      		<hr class="d-sm-none">
	    	</div>
	    	<div id="content" class="col-sm-10">
	    		<!-- 회원정보 -->	
			    <div class="container-item update" style="display: block;">
			    	<div class="input-group">
						<div class="input-group-prepend">
				        	<span class="input-group-text justify-content-center btn-icon">
				        		<i class="fi fi-sr-user"></i>
			        		</span>
				      	</div>
						<span class="form-control" id="me_id">${user.me_id}</span>		      	
					</div>
					<div class="input-group">
						<div class="input-group-prepend input-group-prepend-pw">
				        	<span class="input-group-text justify-content-center btn-icon">
				        		<i class="fi fi-sr-lock"></i>
			        		</span>
				      	</div>
						<span class="form-control input-group-pw input-pw" data-num="${user.me_pw}" id="me_pw">${user.me_pw}</span>
						<div class="input-group-append input-group-pw">
				        	<button class="btn btn-outline-info btn-pw btn-icon">
				        		<i class="fi fi-br-edit-message"></i>
			        		</button>
				      	</div>
					</div>
					<div class="input-group">
						<div class="input-group-prepend input-group-prepend-email">
				        	<span class="input-group-text justify-content-center btn-icon">
				        		<i class="fi fi-sr-envelope"></i>
				        	</span>
				      	</div>
						<span class="form-control input-group-email" id="me_email">${user.me_email}</span>
						<div class="input-group-append input-group-email">
				        	<button class="btn btn-outline-info btn-email btn-icon">
				        		<i class="fi fi-br-edit-message"></i>
			        		</button>
				      	</div>
					</div>
					<div class="input-group d-flex justify-content-end mt-3">
			        	<button class="btn btn-outline-danger btn-delete">회원탈퇴</button>
					</div>
			    </div>
			    <!-- 테스트 결과 -->
				<div class="container-item result">
					<table class="table table-hover mt-3">
				    	<thead>
				      		<tr>
				        		<th>검사일</th>
				        		<th>검사결과</th>
				        		<th></th>
				      		</tr>
				    	</thead>
				    	<tbody>
				    		<c:if test="${testList.size() > 0}">
					    		<c:forEach items="${testList}" var="te">
							      	<tr>
								        <td>
									        <fmt:formatDate value="${te.te_date}" pattern="yyyy.MM.dd HH:mm:ss"/>
								        </td>
								        <td>
											${te.te_result}							        	
							        	</td>
								        <td>
								        	<a href="<c:url value="/test/result?te_num=${te.te_num}"/>">결과보기</a>
							        	</td>
							      	</tr>
					    		</c:forEach>
				    		</c:if>
				    		<c:if test="${testList.size() == 0}">
				    			<tr>
					        		<th class="text-center" colspan="3">검사결과가 없습니다.</th>
					      		</tr>
				    		</c:if>
				    	</tbody>
					</table>
		    	</div>
			    <!-- 성격 유형 -->
			    <div class="container-item p-type">
					<div class="pt-code">
						<c:forEach items="${ptList}" var="pt">
							<a href="#" class="btn btn-outline-info btn-pt">${pt.pt_code}</a>
						</c:forEach>
					</div>
					<div class="pt-content">
						<div class="pt-content-text" id="pt-content"></div>
						<div class="pt-content-text" id="pt-content-update"></div>
					</div>
					<button class="btn btn-outline-info update-pt btn-icon" id="btn-update-pt">
						<i class="fi fi-br-edit-message"></i>
					</button>
			    </div>
			    <!-- 질문 -->
			    <div class="container-item question">
					<div class="qu-type">
						<div class="btn btn-outline-info btn-qu IE">IE</div>
						<div class="btn btn-outline-info btn-qu SN">SN</div>
						<div class="btn btn-outline-info btn-qu TF">TF</div>
						<div class="btn btn-outline-info btn-qu PJ">PJ</div>
					</div>
					<div>
						<ul class="list-group mt-3 mb-3 question-list">
							<c:forEach items="${quList}" var="qu">
								<li class="list-group-item d-flex justify-content-between align-items-center ${qu.qu_type}">
									<span>${qu.qu_content}</span>
								    <span>
								    	<c:if test="${qu.qu_answerCount != 0}">
									    	<button class="btn btn-outline-info btn-update-qu btn-icon" 
												data-num="${qu.qu_num}" data-type="${qu.qu_type}" data-content="${qu.qu_content}">
												<i class="fi fi-br-edit-message"></i>
											</button>
								    	</c:if>
								    	<c:if test="${qu.qu_answerCount == 0}">
									    	<button class="btn btn-outline-danger btn-del-qu btn-icon" 
												data-num="${qu.qu_num}" data-type="${qu.qu_type}">
												<i class="fi fi-rs-trash"></i>
											</button>
								    	</c:if>
								    </span>
							  	</li>
							</c:forEach>
						</ul>
					</div>
					<div class="insert-qu-box mt-3">
						<div class="input-group mb-3 input-box">
							<div class="input-group-prepend" id="qu_type-select-box">
							  	<select class="input-group-text bg-light" name="qu_type" id="qu_type-select" style="width: 110px;">
							  	  	<option value="" selected disabled hidden>질문유형</option>
							      	<option class="op-ie" value="IE">IE</option>
							      	<option class="op-sn" value="SN">SN</option>
							      	<option class="op-tf" value="TF">TF</option>
							      	<option class="op-pj" value="PJ">PJ</option>
						    	</select>
							</div>
							<input type="text" class="form-control" placeholder="등록할 질문" name="qu_content">
							<div class="input-group-append">
								<button class="btn btn-outline-success btn-icon" id="insert-qu">
									<i class="fi fi-bs-plus"></i>
								</button>
							</div>
						</div>
					</div>
			    </div>
			    <!-- 토론 -->
			    <div class="container-item topic">
                	<ul class="list-group mt-3 mb-3 discussion-list">
		            	
				  	</ul>
	                <!-- 토론방 추가 폼 -->
	                <form class="mb-3 form-topic-insert">
	                    <div class="input-group">
	                        <input type="text" id="new-topic" class="form-control" placeholder="등록할 토론 주제" required>
	                        <div class="input-group-append">
	                            <button class="btn btn-outline-success btn-icon" type="submit">
	                            	<i class="fi fi-bs-plus"></i>
                            	</button>
	                        </div>
	                    </div>
	                </form>
			    </div>
		    </div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	<script type="text/javascript">
		//질문 관리
		//타입별 질문 리스트 불러오는 함수
		function displayQuTypeList(qu_type){
			$.ajax({
				url : '<c:url value="/mypage/manage/qu"/>',
				method: 'post',
				data : {
					qu_type : qu_type,
				},
				success : function(data){
					var str = '';
					for(qu of data.quList){
						var btn = '';
						if(qu.qu_answerCount == 0){
							btn = `
								<button class="btn btn-outline-danger btn-del-qu btn-icon" 
									data-num="\${qu.qu_num}" data-type="\${qu.qu_type}">
									<i class="fi fi-rs-trash"></i>
								</button>
							`;
						}else{
							btn = `
								<button class="btn btn-outline-info btn-update-qu btn-icon" 
									data-num="\${qu.qu_num}" data-type="\${qu.qu_type}" data-content="\${qu.qu_content}">
									<i class="fi fi-br-edit-message"></i>
								</button>
							`;
						}
						str += `
							<li class="list-group-item d-flex justify-content-between align-items-center \${qu.qu_type}">
								<span>\${qu.qu_content}</span>
							    <span>
							    	\${btn}	
							    </span>
						  	</li>
						`;
					}
					$('.question-list').html(str);
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		}
		//타입 
		$('.btn-qu').click(function(){
			if($(this).hasClass('active')){
				$(this).removeClass('active');
				$('[name="qu_content"]').val('');
				displayQuTypeList('all');
				return;
			}
			$('.btn-qu').removeClass('active');
			$(this).addClass('active');
			var qu_type = $(this).text();		
			$('#qu_type-select').val(qu_type);
			$('[name="qu_content"]').val('');
			displayQuTypeList(qu_type);
		});
		//삭제 
		$(document).on('click', '.btn-del-qu', function(){
			if(confirm("정말 삭제하시겠습니까?")){
				var qu_num = $(this).data('num');
				var qu_type = $(this).data('type');
				$.ajax({
					url : '<c:url value="/mypage/manage/qu/delete"/>',
					method: 'post',
					data : {
						qu_num : qu_num,
					},
					success : function(data){
						if(data.result){
							
						}else{
							alert('질문을 삭제하지 못했습니다.');
						}
						displayQuTypeList(qu_type);
					},
					error : function(xhr){
						console.log(xhr);
					}
				});
			}
		});
		//수정
		$(document).on('click', '.btn-update-qu', function(){
			var qu_num = $(this).data('num');
			var qu_type = $(this).data('type');
			var qu_content = $(this).data('content');
			var str = `
				<div class="input-group-prepend" id="qu_type-select-box">
				  	<select class="input-group-text bg-light" name="qu_type" id="qu_type-select" style="width: 110px;">
				  		<option value="" selected disabled hidden>질문유형</option>
				      	<option class="op-ie" value="IE">IE</option>
				      	<option class="op-sn" value="SN">SN</option>
				      	<option class="op-tf" value="TF">TF</option>
				      	<option class="op-pj" value="PJ">PJ</option>
			    	</select>
				</div>
				<input type="text" class="form-control" placeholder="수정할 질문" name="qu_content" value="\${qu_content}">
				<div class="input-group-append">
					<button class="btn btn-outline-success btn-icon" id="update-qu" data-num="\${qu_num}">
						<i class="fi fi-bs-check"></i>
					</button>
				</div>
			`;
			$('.input-box').children().remove();
			$('.input-box').append(str);
			$('#qu_type-select').val(qu_type);
		});
		$(document).on('click', '#update-qu', function(){
			var qu_num = $(this).data("num");
			var qu_type = $('[name="qu_type"]').val();
			var qu_content = $('[name="qu_content"]').val();
			if(qu_type == null || qu_type == ''){
				alert('질문유형을 선택하세요.');
				return;
			}
			if(qu_content == ''){
				alert('질문을 입력하세요.');
				return;
			}
			$.ajax({
				url : '<c:url value="/mypage/manage/qu/update"/>',
				method: 'post',
				data : {
					qu_num : qu_num,
					qu_type : qu_type,
					qu_content : qu_content
				},
				success : function(data){
					if(data.result){
						var str = `
							<div class="input-group-prepend" id="qu_type-select-box">
							  	<select class="input-group-text bg-light" name="qu_type" id="qu_type-select" style="width: 110px;">
							  	  <option value="" selected disabled hidden>질문유형</option>
							      <option class="op-ie" value="IE">IE</option>
							      <option class="op-sn" value="SN">SN</option>
							      <option class="op-tf" value="TF">TF</option>
							      <option class="op-pj" value="PJ">PJ</option>
						    	</select>
							</div>
							<input type="text" class="form-control" placeholder="등록할 질문" name="qu_content">
							<div class="input-group-append">
								<button class="btn btn-outline-success btn-icon" id="insert-qu">
									<i class="fi fi-bs-plus"></i>
								</button>
							</div>
						`;
						$('.input-box').children().remove();
						$('.input-box').append(str);
					}else{
						alert("수정하지 못했습니다.");
					}
					displayQuTypeList(qu_type);
					$('.btn-qu').removeClass('active');
					$('.'+qu_type).addClass('active');
					$('.btn-ins-qu').click();
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		//추가
		//등록 버튼 이벤트
		$(document).on('click', '#insert-qu', function(){
			var qu_type = $('[name="qu_type"]').val();
			var qu_content = $('[name="qu_content"]').val();
			if(qu_type == null || qu_type == ''){
				alert('질문유형을 선택하세요.');
				return;
			}
			if(qu_content == ''){
				alert('질문을 입력하세요.');
				return;
			}
			$.ajax({
				url : '<c:url value="/mypage/manage/qu/insert"/>',
				method: 'post',
				data : {
					qu_type : qu_type,
					qu_content : qu_content
				},
				success : function(data){
					if(data.result){
						$('[name="qu_content"]').val('');
					}else{
						alert("등록하지 못했습니다.");
					}
					displayQuTypeList(qu_type);
					$('.btn-qu').removeClass('active');
					$('.'+qu_type).addClass('active');
					$('.btn-ins-qu').click();
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
		// 유형 설명 수정
		var pt_code = '';
		$('#btn-update-pt').click(function(){
			/* $('#pt-content').hide(); */
			//썸머노트
			$('#pt-content').summernote({
			  placeholder: '성격 유형 설명',
			  tabsize: 2,
			  heigth: 400,		  
			  minHeight: 300
			});
			var btnStr = `
				<button class="btn btn-outline-success mt-3 update-pt btn-icon" id="btn-update-c-pt" data-code="\${pt_code}"
							style="margin: 10px 0;">
					<i class="fi fi-bs-check"></i>
				</button>
			`;
			$('#btn-update-pt').hide();
			$('#btn-update-pt').after(btnStr);
		});
		
		$(document).on('click', '#btn-update-c-pt', function(){
			var pt_code = $(this).data('code');
			var pt_content = $('#pt-content').summernote('code');
			$.ajax({
				url : '<c:url value="/mypage/manage/pt/update"/>',
				method: 'post',
				data : {
					pt_code : pt_code,
					pt_content : pt_content
				},
				success : function(data){
					if(data.result){

					}else {
						alert('설명을 수정하지 못했습니다.');
					}
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
			$('#btn-update-c-pt').remove();
			$('#btn-update-pt').show();
			$('#pt-content').summernote('destroy');		
		});
	
		// 선택한 유형 설명 불러오는 기능
		$('.btn-pt').click(function(){
			$('#pt-content').summernote('destroy');
			$('#btn-update-pt').show();
			$('#btn-update-c-pt').remove();
			if($('.btn-pt').hasClass('btn-info')){
				$('.btn-pt').removeClass('btn-info');
				$('.btn-pt').addClass('btn-outline-info');
				$('#btn-update-pt').show();
			}
			if($(this).hasClass('btn-outline-info')){
				$(this).removeClass('btn-outline-info');
				$(this).addClass('btn-info');
			}
			pt_code = $(this).text();
			$.ajax({
				async : false,
				url : '<c:url value="/mypage/manage/pt"/>',
				data : {
					pt_code : pt_code
				},
				success : function(data){
					let pt = JSON.parse(data.pt);
					$('#pt-content').html(pt.pt_content);
					$('#pt-content').show();
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
		$('.dropdown-item').click(function(){
			$('.dropdown-item').removeClass('active');
			$(this).addClass('active');
		});
		$('.nav-link').click(function(){
			if($(this).data('toggle') != 'dropdown'){
				$('.dropdown-item').removeClass('active');
			}
			$('.nav-link').removeClass('active');
			$(this).addClass('active');
		});
		
		//마이페이지 메뉴 선택시 화면 전환
		$('.item-link').click(function(){
			var sm = $(this).data('target');
			switch (sm){
			case 'update' : 
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.update').css('display', 'block');
				break;
			case 'result' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.result').css('display', 'block');
				break;
			case 'p-type' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.p-type').css('display', 'block');
				break;
			case 'question' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.question').css('display', 'block');
				break;
			case 'topic' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.topic').css('display', 'block');
				break;
			default :
				break;
			}
		});
		
		let me_ori_pw = $('.input-pw').data('num');
		$('.btn-pw').click(function(){
			$('.input-group-pw').remove();
			var str = `
		      	<input type="text" class="form-control input-pw" id="me_pw" name="me_pw" value="${user.me_pw}">
				<div class="input-group-append input-group-pw">
		        	<button class="btn btn-outline-success btn-update-pw btn-icon">
		        		<i class="fi fi-bs-check"></i>
	        		</button>
		      	</div>
			`;
			$('.input-group-prepend-pw').after(str);
		});
		
		$(document).on('click', '.btn-update-pw', function(){
			var me_pw = $('.input-pw').val();
			let regexPw = /^[a-zA-Z0-9!@#$]{6,15}$/;
			if(me_pw == ''){
				alert('변경할 비밀번호를 입력하세요.');
				return;
			}else if(!regexPw.test(me_pw)){
				alert('비밀번호는 6~15자의 영문 대/소문자, 숫자, 특수문자(!@#$)만 사용가능합니다.');
				return;
			}else if(me_pw == me_ori_pw){
				alert('동일한 비밀번호입니다.');
				return;
			}
			var res = false;
			$.ajax({
				async : false,
				url : '<c:url value="/mypage/update/pw"/>',
				data : {
					me_pw : me_pw
				},
				success : function(data){
					res = data.res;
					if(res){
						alert('비밀번호를 변경했습니다. 다시 로그인 해주세요.');
						location.href = '<c:url value="/login"/>';
					}else{
						alert('비밀번호를 변경하지 못했습니다.');
						return;
					}
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
		$('.btn-email').click(function(){
			$('.input-group-email').remove();
			var str = `
		      	<input type="text" class="form-control input-group-email input-email" id="me_email" name="me_email" value="${user.me_email}">
				<div class="input-group-append input-group-email">
		        	<button class="btn btn-outline-success btn-update-email btn-icon">
		        		<i class="fi fi-bs-check"></i>
	        		</button>
		      	</div>
			`;
			$('.input-group-prepend-email').after(str);
		});
		
		$(document).on('click', '.btn-update-email', function(){
			var me_email = $('.input-email').val();
			let regexEmail = /^\w{6,13}@\w{4,8}.[a-z]{2,3}$/;
			
			if(me_email == ''){
				alert('변경할 이메일을 입력하세요.');
				return;
			}else if(!regexEmail.test(me_email)){
				alert('email 형식이 아닙니다.');
				return;
			}
			
			var res = false;
			$.ajax({
				async : false,
				url : '<c:url value="/mypage/update/email"/>',
				data : {
					me_email : me_email
				},
				success : function(data){
					res = data.res;
					if(res){
						location.href = '<c:url value="/mypage"/>';
					}else{
						alert('이메일을 변경하지 못했습니다.');
						return;
					}
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
		$('.btn-delete').click(function(){
			if(confirm('정말 탈퇴하시겠습니까? 탈퇴하면 다시는 복구할 수 없습니다.')){
				$.ajax({
					async : false,
					url : '<c:url value="/mypage/delete"/>',
					success : function(data){
						res = data.res;
						if(res){
							alert('회원을 탈퇴했습니다.');
							location.href = '<c:url value="/"/>';
						}else{
							alert('회원을 탈퇴하지 못했습니다.');
							return;
						}
					},
					error : function(xhr){
						console.log(xhr);
					}
				});
			}else{
				return;
			}
		});
		
		// 토론 관리
	    loadDiscussionRooms();
	    
	    $('.form-topic-insert').submit(function(e) {
	        e.preventDefault();
	        var dr_topic = $('#new-topic').val();
	        
	        $.ajax({
	            url: '<c:url value="/mypage/manage/dr/insert"/>',
	            method: 'POST',
	            data: {dr_topic : dr_topic},
	            success: function(data) {
	                if(data) {
	                	loadDiscussionRooms();
	                    $('#new-topic').val(''); // 입력창 초기화
	                }else {
	                    alert('토론방을 추가하지 못했습니다.');
	                }
	            },
	            error: function(xhr) {
	                console.error(xhr);
	            }
	        });
	    });

	    $(document).on('click', '.btn-delete-topic', function() {
	        var dr_num = $(this).data('num');
	    
	        if(confirm('정말 삭제하시겠습니까?')) {
	            $.ajax({
	                url: '<c:url value="/mypage/manage/dr/delete"/>',
	                method: 'POST',
	                data: { dr_num: dr_num },
	                success: function(data) {
	                    if (data.result) {
	                        loadDiscussionRooms();
	                    } else {
	                        alert('토론방을 삭제하지 못했습니다.');
	                    }
	                },
	                error: function(xhr) {
	                    console.error(xhr);
	                }
	            });
	        }
	    });

	    function loadDiscussionRooms() {
	        $.ajax({
	            url: '<c:url value="/mypage/manage/dr"/>',
	            method: 'GET',
	            success: function(data) {
	            	let list = data.list;
	                var str  = '';
	            	for(dr of list){
	            		str += `
	            			<li class="list-group-item d-flex justify-content-between align-items-center">
							    <span>
								    <span>\${dr.dr_topic}</span>
								    <span class="badge badge-primary badge-pill">\${dr.commentCount}</span>
							    </span>
							    <button class="btn btn-outline-danger btn-delete-topic btn-icon" data-num=\${dr.dr_num}>
							    	<i class="fi fi-rs-trash"></i>
						    	</button>
						  	</li>
	    		        `;
	            	}
	                $('.discussion-list').html(str);
	            },
	            error: function(xhr) {
	                console.log(xhr);
	       		}
	       });
	    }
	</script>
	
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