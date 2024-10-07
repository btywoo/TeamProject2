<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mbti</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
    <link rel="stylesheet" href="https://www.16personalities.com/build/assets/dhlwzs1saxn0--BNRGEd8c.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<main class="q-tl">
        <div class="hero">
            <h1 style="font-size: 80px; color: #324448; font-weight: bold;">성격 유형</h1>
        </div>
        <div class="type-group analysts">
            <svg class="background" aria-hidden="true" viewBox="0 0 1920 155" preserveAspectRatio="none"><polygon class="c1" points="1920 823 0 823 0 0 396 101 835 31 1574 149 1920 17 1920 823"></polygon></svg>
            <h2 id="analysts">분석가형</h2>
            <div class="types">
                <a class="type" href="<c:url value="/personality_type/detail?pt_code=INTJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/intj-architect.svg" data-animation="architect">
                    <h4>전략가</h4>
                    <h5>INTJ</h5>
                    <div class="snippet text--bal">모든 일에 대해 계획을 세우며 상상력이 풍부한 전략가입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=INTP"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/intp-logician.svg" data-animation="logician">
                    <h4>논리술사</h4>
                    <h5>INTP</h5>
                    <div class="snippet text--bal">지식을 끝없이 갈망하는 혁신적인 발명가입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ENTJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/entj-commander.svg" data-animation="commander">
                    <h4>통솔자</h4>
                    <h5>ENTJ</h5>
                    <div class="snippet text--bal">항상 문제 해결 방법을 찾아내는 성격으로, 대담하고 상상력이 풍부하며 의지가 강력한 지도자입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ENTP"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/entp-debater.svg" data-animation="debater">
                    <h4>변론가</h4>
                    <h5>ENTP</h5>
                   	<div class="snippet text--bal">지적 도전을 즐기는 영리하고 호기심이 많은 사색가입니다.</div>
                </a>
            </div>
        </div>
        
        <div class="type-group diplomats">
            <h2 id="diplomats">외교관형</h2>
            <div class="types">
                <a class="type" href="<c:url value="/personality_type/detail?pt_code=INFJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/infj-advocate.svg" data-animation="advocate">
                    <h4>옹호자</h4>
                    <h5>INFJ</h5>
                    <div class="snippet text--bal">차분하고 신비한 분위기를 풍기는 성격으로, 다른 사람에게 의욕을 불어넣는 이상주의자입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=INFP"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/infp-mediator.svg" data-animation="mediator">
                    <h4>중재자</h4>
                    <h5>INFP</h5>
                    <div class="snippet text--bal">항상 선을 행할 준비가 되어 있는 부드럽고 친절한 이타주의자입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ENFJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/enfj-protagonist.svg" data-animation="protagonist">
                    <h4>선도자</h4>
                    <h5>ENFJ</h5>
                    <div class="snippet text--bal">청중을 사로잡고 의욕을 불어넣는 카리스마 넘치는 지도자입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ENFP"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/enfp-campaigner.svg" data-animation="campaigner">
                    <h4>활동가</h4>
                    <h5>ENFP</h5>
                    <div class="snippet text--bal">열정적이고 창의적인 성격으로, 긍정적으로 삶을 바라보는 사교적이면서도 자유로운 영혼입니다.</div>
                </a>
            </div>
        </div>

        <div class="type-group sentinels">
            <h2 id="sentinels">관리자형</h2>
            <div class="types">
                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ISTJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/istj-logistician.svg" data-animation="logistician">
                    <h4>현실주의자</h4>
                    <h5>ISTJ</h5>
                    <div class="snippet text--bal">사실을 중시하는 믿음직한 현실주의자입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ISFJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/isfj-defender.svg" data-animation="defender">
                    <h4>수호자</h4>
                    <h5>ISFJ</h5>
                    <div class="snippet text--bal">주변 사람을 보호할 준비가 되어 있는 헌신적이고 따뜻한 수호자입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ESTJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/estj-executive.svg" data-animation="executive">
                    <h4>경영자</h4>
                    <h5>ESTJ</h5>
                    <div class="snippet text--bal">사물과 사람을 관리하는 데 뛰어난 능력을 지닌 경영자입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ESFJ"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/esfj-consul.svg" data-animation="consul">
                    <h4>집정관</h4>
                    <h5>ESFJ</h5>
                   	<div class="snippet text--bal">배려심이 넘치고 항상 다른 사람을 도울 준비가 되어 있는 성격으로, 인기가 많고 사교성 높은 마당발입니다.</div>
                </a>
            </div>
        </div>

        <div class="type-group explorers">
        	<h2 id="explorers">탐험가형</h2>
            <div class="types">
				<a class="type" href="<c:url value="/personality_type/detail?pt_code=ISTP"/>">
                	<img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/istp-virtuoso.svg" data-animation="virtuoso">
                    <h4>장인</h4>
                    <h5>ISTP</h5>
                    <div class="snippet text--bal">대담하면서도 현실적인 성격으로, 모든 종류의 도구를 자유자재로 다루는 장인입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ISFP"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/isfp-adventurer.svg" data-animation="adventurer">
                    <h4>모험가</h4>
                    <h5>ISFP</h5>
                    <div class="snippet text--bal">항상 새로운 경험을 추구하는 유연하고 매력 넘치는 예술가입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ESTP"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/estp-entrepreneur.svg" data-animation="entrepreneur">
                    <h4>사업가</h4>
                    <h5>ESTP</h5>
                    <div class="snippet text--bal">위험을 기꺼이 감수하는 성격으로, 영리하고 에너지 넘치며 관찰력이 뛰어난 사업가입니다.</div>
                </a>

                <a class="type" href="<c:url value="/personality_type/detail?pt_code=ESFP"/>">
                    <img class="image" src="https://www.16personalities.com/static/images/personality-types/avatars/esfp-entertainer.svg" data-animation="entertainer">
                    <h4>연예인</h4>
                    <h5>ESFP</h5>
                    <div class="snippet text--bal">즉흥적이고 넘치는 에너지와 열정으로 주변 사람을 즐겁게 하는 연예인입니다.</div>
                </a>
            </div>
        </div>
    </main>

	<jsp:include page="/WEB-INF/views/common/footer2.jsp"/>
	
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