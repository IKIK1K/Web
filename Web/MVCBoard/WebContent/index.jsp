<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css 파일을 적용하는 코드. 만약 이 코드가 없다면 모든 html 속성들은 기본상태,
	default.css 적용을 받지 않음. 이 코드를 통해 css파일을 가져오고 html 태그들에
	속성값들 부여.
 -->
<link rel="stylesheet" href="./css/default.css" media="screen">
<title>첫 화면</title>
</head>
<body>
<!-- css 파일에 만들어 놓은 table의 layout 속성 이용 -->
<table class="layout">
<tr height="50"><td>
<!-- header 파일 포함 코드 -->
<jsp:include page="/incl/header.jsp" />
</td></tr>
<!-- 본문 표시 코드 -->
<tr height="500" valign="top"><td>
<h6>게시판에 오신걸 환영합니다.</h6>
<br>
<c:if test="${sessionScope.userid eq 'admin'}">
<a href="Board.do?action=memberSearch">
<button>회원 검색</button></a>
</c:if>
</td></tr>
<!-- 본문 표시 코드 -->
<tr height="50"><td>
<!-- footer 파일 포함 코드 -->
<jsp:include page="/incl/footer.jsp" />
</td></tr>
</table>
</body>
</html>