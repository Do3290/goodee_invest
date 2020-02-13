<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인 페이지</title>
</head>



<body>


<br>
<!-- 네이버 로그인 창으로 이동 -->
<div id="naver_id_login" style="text-align:center"><a href="${url}">
<img width="223" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
<br>

<!-- kakao창으로 이동 -->
<div style="text-align:center"><a href = "https://kauth.kakao.com/oauth/authorize?client_id=8d471762f594e00460f15f188ab7c6d2&redirect_uri=http://192.168.0.59:8080/invest_team/user/info2.do&response_type=code">
<img src="../img/kakao_account_login_btn_medium_narrow.png"></a></div>
<br>
 


<hr>
</body>
</html>


