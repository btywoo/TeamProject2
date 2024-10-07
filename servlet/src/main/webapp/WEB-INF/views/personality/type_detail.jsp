<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pt.pt_code}</title>
	<link rel="stylesheet" href="https://www.16personalities.com/build/assets/dhlwzs1saxn0--BNRGEd8c.css" />
	<link rel="stylesheet" href="https://www.16personalities.com/build/assets/c3r5bgnvcmu---1n4ZUfs.css" />
	<jsp:include page="/WEB-INF/views/common/head.jsp" />
	<style type="text/css">
		.content{width: 800px; margin: 0 auto;}
	</style>
</head>
<body role="document">
	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<header	class="sp-typeheader tw-relative tw-mb-40 medium:tw-mt-0 analysts">
		<div class="section__wrap tw-relative tw-z-10 tw-max-w-[1540px] huge:tw-mx-20 huge-3:tw-mx-auto tw-pt-20 medium:tw-pt-40 huge:tw-pt-60 huge-3:tw-pt-80 huge:tw-flex tw-justify-between huge:[clip-path:polygon(0.65%_0%,98.7%_0%,100%_49.41%,98.7%_84.71%,65.58%_100%,39.61%_97.65%,11.69%_100%,0.65%_92.94%,0%_23.53%)]" style="background-color : #77baca;">
			<div class="type-info tw-pb-20 medium:tw-pb-40 huge:tw-pb-60 huge-3:tw-pb-80 tw-px-15 medium:tw-px-20 huge:tw-px-0 huge:tw-max-w-[50%] huge-3:tw-max-w-[700px] huge:tw-ml-[3.89%] huge-3:tw-ml-[7.7922%]">
				<div class="h5 tw-font-bold tw-font-titles tw-text-white tw-mb-10 tw-mt-0">
					<span class="h1-phone h1-large-mdbp h1-large-lgbp  tw-block"> 성격 유형: ${pt.pt_code}</span>
				</div>
			</div>
		</div>
	</header>

	<main class="content mb-3">
		${pt.pt_content}
	</main>

	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	
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