<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
		.error{color:red; margin-bottom: 5px;}
		.form-group{margin-bottom: 0;}
		.container-body{padding: 30px; margin-top: 30px;}
		.form-group, .form-control{height: 50px};
		.icon{line-height: 16px;}
	</style>
</head>
<body>
	<div class="container container-body col-4">
		<div class="d-flex justify-content-center">
			<a class="navbar-brand" href="<c:url value="/"/>" style="color:black;">
				<img src="https://www.16personalities.com/static/images/system/logo.svg" alt="logo">
			</a>
		</div>
		<form action="<c:url value="/signup"/>" method="post" id="form" style="margin-top: 30px">
			<div style="min-height: calc(100vh - 300px)">
				<div class="form-group input-group">
					<div class="input-group-prepend">
			        	<span class="input-group-text icon">
			        		<i class="fi fi-sr-user"></i>
			        	</span>
			      	</div>
					<input type="text" class="form-control" id="me_id" name="me_id" placeholder="아이디">
				</div>
				<div class="error error-id"></div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
			        	<span class="input-group-text icon">
			        		<i class="fi fi-sr-lock"></i>
		        		</span>
			      	</div>
					<input type="password" class="form-control" id="me_pw" name="me_pw" placeholder="비밀번호">
				</div>
				<div class="error error-pw"></div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
			        	<span class="input-group-text icon">
			        		<i class="fi fi-sr-lock"></i>
		        		</span>
			      	</div>
					<input type="password" class="form-control" id="me_pw2" name="me_pw2" placeholder="비밀번호 확인">
				</div>
				<div class="error error-pw2"></div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
			        	<span class="input-group-text icon">
			        		<i class="fi fi-sr-envelope"></i>
		        		</span>
			      	</div>
					<input type="email" class="form-control" id="me_email" name="me_email" placeholder="이메일">
				</div>
				<div class="error error-email"></div>
			</div>
			<button type="submit" class="btn btn-outline-success col-12 mt-3">회원가입</button>
		</form>
	</div>
	
	<script type="text/javascript">
		let regexId = /^[a-z0-9]{6,13}$/;
		let msgId = `<span>아이디는 6~13자의 영문 소문자, 숫자만 사용가능합니다.</span>`;
		let regexPw = /^[a-zA-Z0-9!@#$]{6,15}$/;
		let msgPw = `<span>비밀번호는 6~15자의 영문 대/소문자, 숫자, 특수문자(!@#$)만 사용가능합니다.</span>`;
		let msgPw2 = `<span>비밀번호와 일치하지 않습니다.</span>`;
		let regexEmail = /^\w{6,13}@\w{4,8}.[a-z]{2,3}$/;
		let msgEmail = `<span>email 형식이 아닙니다.</span>`;
		let msgRequired = `<span>필수항목입니다.</span>`;
		let msgCheck = `<span>이미 사용중인 아이디입니다.</span>`;
		
		$('#me_id').keyup(function(){
			$('.error-id').children().remove();
			
			if($('#me_id').val() == ''){
				$('.error-id').append(msgRequired);
			}else{
				if(!regexId.test($('#me_id').val())){
					$('.error-id').append(msgId);
				}else{
					$('.error-id').children().remove();	
					if(!checkId()){
						$('.error-id').append(msgCheck);
					}else{
						$('.error-id').children().remove();	
					}
				}
			}
		});
		
		$('#me_pw').keyup(function(){
			$('.error-pw').children().remove();
			
			if($('#me_pw').val() == ''){
				$('.error-pw').append(msgRequired);
			}else{
				if(!regexPw.test($('#me_pw').val())){
					$('.error-pw').append(msgPw);
				}else{
					$('.error-pw').children().remove();
				}
			}
		});
		
		$('#me_pw2').keyup(function(){
			$('.error-pw2').children().remove();
			
			if($('#me_pw').val() != $('#me_pw2').val()){
				$('.error-pw2').append(msgPw2);
			}else{
				$('.error-pw2').children().remove();	
			}
		});
		
		$('#me_email').keyup(function(){
			$('.error-email').children().remove();
			
			if($('#me_email').val() == ''){
				$('.error-email').append(msgRequired);
			}else{
				if(!regexEmail.test($('#me_email').val())){
					$('.error-email').append(msgEmail);
				}else{
					$('.error-email').children().remove();
				}
			}
		});
		
		$('#form').submit(function(){
			$('.error').children().remove();
			let flag = true;
			
			if($('#me_id').val() == ''){
				$('.error-id').append(msgRequired);
				flag = false;
			}else{
				if(!regexId.test($('#me_id').val())){
					$('.error-id').append(msgId);
					flag = false;
				}else{
					$('.error-id').children().remove();	
					if(!checkId()){
						$('.error-id').append(msgCheck);
						flag = false;
					}else{
						$('.error-id').children().remove();	
					}
				}
			}
			
			if($('#me_pw').val() == ''){
				$('.error-pw').append(msgRequired);
				flag = false;
			}else{
				if(!regexPw.test($('#me_pw').val())){
					$('.error-pw').append(msgPw);
					flag = false;
				}
			}
			
			if($('#me_pw').val() != $('#me_pw2').val()){
				$('.error-pw2').append(msgPw2);
				flag = false;
			}
			
			if($('#me_email').val() == ''){
				$('.error-email').append(msgRequired);
				flag = false;
			}else{
				if(!regexEmail.test($('#me_email').val())){
					$('.error-email').append(msgEmail);
					flag = false;
				}
			}
			
			return flag;
		});
	
		function checkId(){
			var res = false;
			var me_id = $('#me_id').val();
			
			$.ajax({
				async : false,
				url : '<c:url value="/check/id"/>',
				data : {
					me_id : me_id
				},
				success : function(data){
					res = data.result;
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
			return res;
		}
	</script>
</body>
</html>