<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>토론방</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
		.container{padding: 50px 120px;}
		.container-comment, .container-dr{
			box-sizing:border-box; height: 650px;
			border: 1px solid gray; border-radius: 5px;
		}
		.container-comment{width: 55%; border-right: 0;}
		.container-dr{width: 45%;}
		.comment-list{height:100%; overflow: auto;}
<<<<<<< HEAD
		#topic, .topic-group{background-color: #77baca;}
		.dr-group{background-color: #77baca;}
=======
		#topic, .topic-group{background-color: #77baca; color: white;}
		.dr-group{background-color: #77baca; color: white;}
>>>>>>> main
		.comment{
			max-width: 45%; padding: 8px;
			display: inline-block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9;
			text-decoration:none; margin: 0px 0px 3px 0px;
			word-wrap: break-word; word-break: break-all;
		}
<<<<<<< HEAD
		.comment-other{background: #cadff1; color: #324448; border-radius: 0px 15px 15px 15px;}
		.comment-mine{background: #617c92; color: white; border-radius: 15px 0px 15px 15px;}
=======
		.comment-other{background: #ecf2f8; color: #324448; border-radius: 0px 15px 15px 15px;}
		.comment-mine{background: #cadff1; color: #324448; border-radius: 15px 0px 15px 15px;}
>>>>>>> main
		.comment-name{font-weight: bold;}
		#topic{
			font-weight: bold; border: 0; text-align: center; 
			font-size:20px; color: black; 
		}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<div class="container d-flex col-12">
		<div class="container-comment">
			<div class="list-group" style="height: 100%;">
				<div class="list-group-item form-group pb-0 topic-group" style="position: relative; margin-bottom: 5px;">
					<a href="<c:url value="/discussion"/>">
				    	<i class="fi fi-br-arrow-left" style="position:absolute; left:12px; top:10px; color:white; font-size:24px;"></i>
					</a>
			    	<div style="font-weight: bold; text-align: center; font-size:20px;">
			    		토론 주제
		    		</div>
			      	<div class="form-control" id="topic" style="color:white;">
			      		${dr.dr_topic}
		      		</div>
			    </div>
				<div class="" ></div>
				<div class="list-group list-group-item comment-list" >
					<c:if test="${colist ne null}">
						<c:forEach items="${colist}" var="co">
							<c:if test="${co.co_me_id != user.me_id}">
								<div class="list-group-item border border-0 p-0 mt-3">
									<div class="comment-name">
										${co.co_me_id}<c:if test="${co.co_te_result ne null}">(${co.co_te_result})</c:if>
									</div>
									<div class="comment comment-other">
										${co.co_content}
									</div>
								</div>
							</c:if>
							<c:if test="${co.co_me_id == user.me_id}">
								<div class="list-group-item border border-0 p-0 mt-3 d-flex justify-content-end align-items-end">
									<div>
										<c:url var="url" value="/discussion/comment/delete">
											<c:param name="dr_num" value="${co.co_dr_num}"/>
											<c:param name="co_num" value="${co.co_num}"/>
										</c:url>
										<a class="delete-comment" href="${url}" style="color: red; font-size: 12px;">
											삭제
										</a>
									</div>
									<div class="comment comment-mine">
										${co.co_content}
									</div>
								</div>										
							</c:if>
						</c:forEach>
					</c:if>
					<c:if test="${colist eq null}">
					
					</c:if>
				</div>
				<form action="<c:url value="/discussion"/>" method="post" style="height: 38px;" id="form">
					<input type="hidden" name="dr_num" value="${dr.dr_num}">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
					    	<span class="input-group-text" style="line-height: 16px;">
					    		<i class="fi fi-sr-comment-alt"></i>
				    		</span>
					    </div>
				    	<input type="text" class="form-control comment-input" name="co_content">
				    	<div class="input-group-append">
				      		<button class="btn btn-outline-success" type="submit" style="line-height: 16px;">
				      			<i class="fi fi-sr-paper-plane"></i>
				      		</button>
				    	</div>
				  	</div>
				</form>
			</div>
		</div>
		<div class="container-dr">
			<ul class="list-group form-group pb-0">
		    	<li class="list-group-item dr-group" style="font-weight: bold; text-align: center; line-height: 20px; position:relative;">
					<span style="position:absolute; left:12px; top:12px;">
						<i class="fi fi-sr-list" style="font-size:20px;"></i>
					</span>
					<span style="font-size:20px;"> 토론방 목록</span>
				</li>
		    </ul>
		    <div style="overflow: auto; height: 600px;">
				<ul class="list-group dr-list">
					<c:forEach items="${drlist}" var="dr">
						<a href="<c:url value="/discussion?dr_num=${dr.dr_num}"/>" class="list-group-item list-group-item-action">
							<span>${dr.dr_topic}</span>
							<span class="badge badge-primary badge-pill">${dr.commentCount}</span>
						</a>
					</c:forEach>
					<c:if test="${drlist.size() eq 0}">
						<li class="list-group-item" style="font-weight: bold; text-align: center;">
							등록된 토론방이 없습니다.
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	
	<script type="text/javascript">
		$('#form').submit(function(){
			if('${user.me_id}' == ''){
				if(confirm('채팅은 회원만 가능합니다.\n로그인 하시겠습니까?')){
					location.href = '<c:url value="/login"/>';
				}
				return false;
			}
			var dr_num = '${dr.dr_num}';
			if(dr_num == ''){
				alert('토론방을 선택하세요.');
				return false;
			}
			var content = $('.comment-input').val();
			if(content.trim() == ''){
				alert('채팅을 입력하세요.');
				$('.comment-input').focus();
				return false;
			}
		});
		
		$(document).ready(function(){
			$('.comment-list').scrollTop($('.comment-list')[0].scrollHeight);
			$('.comment-input').focus();
	    });
		
		$('.delete-comment').click(function(e){
			if(confirm("정말 삭제하시겠습니까?")){
				
			}else{
				e.preventDefault();
			}
		});
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