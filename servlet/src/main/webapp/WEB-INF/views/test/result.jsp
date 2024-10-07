<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검사 결과</title>
	<link rel="stylesheet" href="https://www.16personalities.com/build/assets/dhlwzs1saxn0--BNRGEd8c.css" />
	<link rel="stylesheet" href="https://www.16personalities.com/build/assets/c3r5bgnvcmu---1n4ZUfs.css" />
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
		.progress{width:90%; height:50px; border-radius: 30px;}
		.progress-bar{height: 50px; color: #576071; font-size: 20px;}
<<<<<<< HEAD
		.mbti-code{
			margin:0 10px; width:2%; height:30px; line-height: 30px; text-align:center;
		}
		.d-flex{align-items: center;}
=======
		.mbti-code{margin:0 10px; width:2%; height:30px; line-height: 30px; text-align:center;}
		.d-flex{align-items: center;}
		.content{width: 800px; margin: 50px auto;}
>>>>>>> main
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<div style="padding: 30px;">
		<div style="align-items: center; text-align:center;">
			<h1 style="font-size: 80px; color: #324448; font-weight: bold; align-items: center; text-align:center; margin: 20px;">
				무료 성격 테스트
			</h1>
			<div class="trademark" style="font-size: 30px; color: #324448; font-weight: bold; align-items: center; text-align:center;">
				NERIS Type Explorer
				<sup>®</sup>
				참고
            </div>
		</div>
	</div>
	
	<div class="container col-12">
		<h2 class="d-flex justify-content-center mt-3" style="color: #576071;">당신은 ${test.te_result}입니다.</h2>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">I</h3>
			<div class="progress">
<<<<<<< HEAD
				<c:if test= "${100 - list.get(0)} > ${list.get(0)}">
					<div class="progress-bar" style="width:${100 - list.get(0)}%; background-color:#d1f5f4;">${100 - list.get(0)}%</div>
					<div class="progress-bar" style="width:${list.get(0)}%; background-color: #E9ECEF;">${list.get(0)}%</div>
				</c:if>
				<div class="progress-bar" style="width:${100 - list.get(0)}%; background-color: #E9ECEF;">${100 - list.get(0)}%</div>
				<div class="progress-bar" style="width:${list.get(0)}%; background-color:#d1f5f4;">${list.get(0)}%</div>
=======
				<c:if test= "${100 - list.get(0) > list.get(0)}">
					<div class="progress-bar" style="width:${100 - list.get(0)}%; background-color:#d1f5f4;">${100 - list.get(0)}%</div>
					<div class="progress-bar" style="width:${list.get(0)}%; background-color: #E9ECEF;">${list.get(0)}%</div>
				</c:if>
				<c:if test="${100 - list.get(0) <= list.get(0)}">
					<div class="progress-bar" style="width:${100 - list.get(0)}%; background-color: #E9ECEF;">${100 - list.get(0)}%</div>
					<div class="progress-bar" style="width:${list.get(0)}%; background-color:#d1f5f4;">${list.get(0)}%</div>
				</c:if>
>>>>>>> main
			</div>
			<h3 class="mbti-code">E</h3>
		</div>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">S</h3>
			<div class="progress">
<<<<<<< HEAD
				<c:if test= "${100 - list.get(1)} > ${list.get(1)}">
					<div class="progress-bar" style="width:${100 - list.get(1)}%; background-color:#f3e2ab;">${100 - list.get(1)}%</div>
					<div class="progress-bar" style="width:${list.get(1)}%; background-color: #E9ECEF;">${list.get(1)}%</div>
				</c:if>
				<div class="progress-bar" style="width:${100 - list.get(1)}%; background-color: #E9ECEF;">${100 - list.get(1)}%</div>
				<div class="progress-bar" style="width:${list.get(1)}%; background-color:#f3e2ab;">${list.get(1)}%</div>
=======
				<c:if test= "${100 - list.get(1) > list.get(1)}">
					<div class="progress-bar" style="width:${100 - list.get(1)}%; background-color:#f3e2ab;">${100 - list.get(1)}%</div>
					<div class="progress-bar" style="width:${list.get(1)}%; background-color: #E9ECEF;">${list.get(1)}%</div>
				</c:if>
				<c:if test= "${100 - list.get(1) <= list.get(1)}">
					<div class="progress-bar" style="width:${100 - list.get(1)}%; background-color: #E9ECEF;">${100 - list.get(1)}%</div>
					<div class="progress-bar" style="width:${list.get(1)}%; background-color:#f3e2ab;">${list.get(1)}%</div>
				</c:if>
>>>>>>> main
			</div>
			<h3 class="mbti-code">N</h3>
		</div>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">T</h3>
			<div class="progress">
<<<<<<< HEAD
				<c:if test= "${100 - list.get(2)} > ${list.get(2)}">
					<div class="progress-bar" style="width:${100 - list.get(2)}%; background-color:#d0f6e3;">${100 - list.get(2)}%</div>
					<div class="progress-bar" style="width:${list.get(2)}%; background-color: #E9ECEF;">${list.get(2)}%</div>
				</c:if>
				<div class="progress-bar" style="width:${100 - list.get(2)}%; background-color: #E9ECEF;">${100 - list.get(2)}%</div>
				<div class="progress-bar" style="width:${list.get(2)}%; background-color:#d0f6e3;">${list.get(2)}%</div>
=======
				<c:if test= "${100 - list.get(2) > list.get(2)}">
					<div class="progress-bar" style="width:${100 - list.get(2)}%; background-color:#d0f6e3;">${100 - list.get(2)}%</div>
					<div class="progress-bar" style="width:${list.get(2)}%; background-color: #E9ECEF;">${list.get(2)}%</div>
				</c:if>
				<c:if test= "${100 - list.get(2) <= list.get(2)}">
					<div class="progress-bar" style="width:${100 - list.get(2)}%; background-color: #E9ECEF;">${100 - list.get(2)}%</div>
					<div class="progress-bar" style="width:${list.get(2)}%; background-color:#d0f6e3;">${list.get(2)}%</div>
				</c:if>
>>>>>>> main
			</div>
			<h3 class="mbti-code">F</h3>
		</div>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">P</h3>
			<div class="progress">
<<<<<<< HEAD
				<c:if test= "${100 - list.get(3)} > ${list.get(3)}">
					<div class="progress-bar" style="width:${100 - list.get(3)}%; background-color:#eee1f6;">${100 - list.get(3)}%</div>
					<div class="progress-bar" style="width:${list.get(3)}%; background-color: #E9ECEF;">${list.get(3)}%</div>
				</c:if>
				<div class="progress-bar" style="width:${100 - list.get(3)}%; background-color: #E9ECEF;">${100 - list.get(3)}%</div>
				<div class="progress-bar" style="width:${list.get(3)}%; background-color:#eee1f6;">${list.get(3)}%</div>
=======
				<c:if test= "${100 - list.get(3) > list.get(3)}">
					<div class="progress-bar" style="width:${100 - list.get(3)}%; background-color:#eee1f6;">${100 - list.get(3)}%</div>
					<div class="progress-bar" style="width:${list.get(3)}%; background-color: #E9ECEF;">${list.get(3)}%</div>
				</c:if>
				<c:if test= "${100 - list.get(3) <= list.get(3)}">
					<div class="progress-bar" style="width:${100 - list.get(3)}%; background-color: #E9ECEF;">${100 - list.get(3)}%</div>
					<div class="progress-bar" style="width:${list.get(3)}%; background-color:#eee1f6;">${list.get(3)}%</div>
				</c:if>
>>>>>>> main
			</div>
			<h3 class="mbti-code">J</h3>
		</div>
	</div>
	
<<<<<<< HEAD
	<div>
		<h2 class="d-flex justify-content-center mt-5">${result.pt_content}</h2>
	</div>
=======
	<main class="content">
		${result.pt_content}
	</main>
>>>>>>> main
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
<<<<<<< HEAD
=======
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
>>>>>>> main
</body>
</html>