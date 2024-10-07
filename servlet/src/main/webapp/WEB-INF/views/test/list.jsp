<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검사</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
		.progress{width:90%; height:20px; border-radius: 30px;}
		.progress-bar{height:30px; background-color: #77baca;}
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
	
<<<<<<< HEAD
	
=======
>>>>>>> main
	<div class="container" style="margin-top: 80px;">
		<!-- 바 툴 -->
		<div style="display: flex; align-items: center; justify-content:center;">
		    <div class="progress-percent" style="margin: 0 20px; font-size: 30px; font-weight: bolder; color: #324448;">

	    	</div>
			<div class="progress">
		    	<div class="progress-bar" style="width:${100 / (pm.totalCount / pm.cri.perPageNum) * (pm.cri.page - 1)}%; height:30px;"></div>
		  	</div>
		</div>
	  	
		<form action="<c:url value="/test/list"/>" method="post" class="col-12 form">
			<c:forEach items="${list}" var="qu">
				<div class="d-flex justify-content-center" style="font-size: 27px; color: #324448; font-weight: bold; margin-top: 80px;">${qu.qu_content}</div>
				<div class="d-flex" style="align-items: center; margin: 80px 0 100px;">
					<div style="font-size: 25px; color: #324448; font-weight: bold">전혀 아니다</div>
					<div class="form-check-inline flex-fill" style="display: flex; justify-content: space-between; margin: 0px 30px;">
				    	<input type="radio" class="form-check-input" name="answer${qu.qu_num}" value="-5" style="width: 60px; height: 60px; margin:0px 20px;">
				    	<input type="radio" class="form-check-input" name="answer${qu.qu_num}" value="-3" style="width: 55px; height: 55px; margin:0px 20px;">
				    	<input type="radio" class="form-check-input" name="answer${qu.qu_num}" value="-2" style="width: 50px; height: 50px; margin:0px 20px;">
			    		<input type="radio" class="form-check-input" name="answer${qu.qu_num}" value="1" style="width: 45px; height: 45px; margin:0px 20px;">
			    		<input type="radio" class="form-check-input" name="answer${qu.qu_num}" value="2" style="width: 50px; height: 50px; margin:0px 20px;">
			    		<input type="radio" class="form-check-input" name="answer${qu.qu_num}" value="3" style="width: 55px; height: 55px; margin:0px 20px;">
			    		<input type="radio" class="form-check-input" name="answer${qu.qu_num}" value="5" style="width: 60px; height: 60px; margin:0px 20px;">
					</div>
				   	<div style="font-size: 25px; color: #324448; font-weight: bold">매우 그렇다</div>
				</div>
				<hr>
			</c:forEach>
			
			<input type="hidden" name="te_num" value="${te_num}">
			<input type="hidden" name="page" value="${pm.cri.page}">
			<input type="hidden" name="perPageNum" value="${pm.cri.perPageNum}">
			<c:if test="${pm.next}">
				<input type="hidden" name="next" value="next">
				<div class="d-flex justify-content-center" style="margin: 100px 0 150px;">
				   	<button type="submit" class="btn btn-primary btn-next" data-num="${te_num}" data-page="${pm.endPage + 1}" 
				   		style="background-color: #77baca; border-color: #2c5d67; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
				   				width: 200px; height: 100px; padding: 15px 40px; border: 1px solid transparent; border-radius: 60px; font-size: 30px;">
		   				다음
		   			</button>
	   			</div>
			</c:if>
			<c:if test="${!pm.next}">
				<input type="hidden" name="next" value="end">
				<div class="d-flex justify-content-center" style="margin: 100px 0;">
					<button type="submit" class="btn btn-primary btn-end"
						style="background-color: #D0A9F5; border-color: #D0A9F5; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
				   				width: 200px; height: 100px; padding: 15px 40px; border: 1px solid transparent; border-radius: 60px; font-size: 30px;">
				   		제출
			   		</button>
				</div>
			</c:if>
	 	</form>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	<script type="text/javascript">
		$('.test-create').click(function(){
			alert('이미 검사를 진행중입니다.');
			return;
		});
		
		var progressPercent = ${100 / (pm.totalCount / pm.cri.perPageNum) * (pm.cri.page - 1)};
		var percent = Math.round(progressPercent) + '%';
		$('.progress-percent').text(percent);
		
		var submit = false;
		$('.form').submit(function(){
			var answer1 = $('input[name=answer${1 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer2 = $('input[name=answer${2 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer3 = $('input[name=answer${3 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer4 = $('input[name=answer${4 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer5 = $('input[name=answer${5 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();

			if(answer1 == null){
				alert("답변을 선택해주세요.");
				submit = false;
				$('[name=answer${1 + pm.cri.perPageNum * (pm.cri.page - 1)}]').focus();
				return false;
			}else if(answer2 == null && '${diff}' == 'n'){
				alert("답변을 선택해주세요.");
				submit = false;
				$('[name=answer${2 + pm.cri.perPageNum * (pm.cri.page - 1)}]').focus();
				return false;
			}else if(answer3 == null && '${diff}' == 'n'){
				alert("답변을 선택해주세요.");
				submit = false;
				$('[name=answer${3 + pm.cri.perPageNum * (pm.cri.page - 1)}]').focus();
				return false;
			}else if(answer4 == null && '${diff}' == 'n'){
				alert("답변을 선택해주세요.");
				submit = false;
				$('[name=answer${4 + pm.cri.perPageNum * (pm.cri.page - 1)}]').focus();
				return false;
			}else if(answer5 == null && '${diff}' == 'n'){
				alert("답변을 선택해주세요.");
				submit = false;
				$('[name=answer${5 + pm.cri.perPageNum * (pm.cri.page - 1)}]').focus();
				return false;
			}else{
				submit = true;
				return true;
			}
		})
	</script>
</body>
</html>