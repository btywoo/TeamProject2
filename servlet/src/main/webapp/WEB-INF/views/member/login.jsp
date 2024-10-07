<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
		.container-body{padding: 30px; margin-top: 30px;}
		.container-inner{padding: 30px 15px;}
		.container-inner-body{border: 1px solid gray; border-radius: 5px;}
		.form-group{margin: 0; height: 100px;}
		.form-control{margin: 0; height: 50px;}
		.form-control-id{border-radius: 5px 5px 0 0;}
		.form-control-pw{border-radius: 0 0 5px 5px; border-top: 0}
		form{width: 100%;}
		.container-inner-footer{padding: 10px 0;}
		.nav-link{color: gray;}
	</style>
</head>
<body>
	<div class="container container-body col-4">
		<div class="d-flex justify-content-center container container-inner">
			<a class="navbar-brand" href="<c:url value="/"/>" style="color:black;">
				<img src="https://www.16personalities.com/static/images/system/logo.svg" alt="logo">
			</a>
		</div>
		<div class="container container-inner container-inner-body">
			<form action="<c:url value="/login"/>" method="post" id="form">
				<div>
					<div class="form-group">
						<input type="text" class="form-control form-control-id" id="me_id" name="me_id" placeholder="아이디">
						<input type="password" class="form-control form-control-pw" id="me_pw" name="me_pw" placeholder="비밀번호">
					</div>
				</div>
				<div class="d-flex justify-content-end custom-control custom-switch mt-2">
					<input type="checkbox" class="custom-control-input" id="auto" name="auto">
      				<label class="custom-control-label" for="auto">자동로그인</label>
				</div>
				<button type="submit" class="btn btn-outline-success col-12 mt-3">로그인</button>
			</form>
		</div>
		<div class="d-flex justify-content-end container container-inner container-inner-footer">
			<a class="nav-link" href="<c:url value="/signup"/>">회원가입</a>
		</div>
	</div>
</body>
</html>