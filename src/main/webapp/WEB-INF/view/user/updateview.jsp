<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="ko" class="row-clear js flexbox rgba opacity video boxsizing no-maclike no-ios no-ie"><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>내 프로필</title>
    
    <meta content="authenticity_token" name="csrf-param">
<meta content="n0Pq2hUGVtJRJE8yF0RdYe/lawNoV8mdjP/ORiBiEso=" name="csrf-token">
    
    <link href="https://tumblbug-assets.imgix.net/appicon/favicon/favicon-32x32.png" rel="icon" type="image/x-icon">

    <link rel="apple-touch-icon" sizes="120x120" href="https://tumblbug-assets.imgix.net/appicon/home-icon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="https://tumblbug-assets.imgix.net/appicon/home-icon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="https://tumblbug-assets.imgix.net/appicon/home-icon/apple-icon-180x180.png">

    <link rel="icon" type="image/png" sizes="48x48" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-48x48.png">
    <link rel="icon" type="image/png" sizes="72x72" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-72x72.png">
    <link rel="icon" type="image/png" sizes="96x96" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-96x96.png">
    <link rel="icon" type="image/png" sizes="144x144" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-144x144.png">
    <link rel="icon" type="image/png" sizes="192x192" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-192x192.png">

    <!-- DNS prefetching -->
<link rel="dns-prefetch" href="//ajax.googleapis.com">
<link rel="dns-prefetch" href="//code.jquery.com">
<link rel="dns-prefetch" href="//cdnjs.cloudflare.com">
<link rel="dns-prefetch" href="//connect.facebook.net">
<link rel="dns-prefetch" href="//fbstatic-a.akamaihd.net">
<!-- end DNS prefetching -->

<!-- CSS bundle -->
<link href="https://d1pqmsyqo4bi9.cloudfront.net/assets/application-15507375c56bd3d22b38bcd907b7e90a.css" media="screen" rel="stylesheet" type="text/css">
<!-- end CSS bundle -->

<!-- CSS externals -->

<!-- end CSS externals -->

    
<!-- JS from CDN -->
<script type="text/javascript" async="" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script><script src="https://connect.facebook.net/ko_KR/all.js?hash=04de35b6696e0fee3f34bd5704b4f0fa&amp;ua=modern_es6" async="" crossorigin="anonymous"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://d2om2e6rfn032x.cloudfront.net/analytics.js/v1/jMrtLL6v6xXmMGP7h/analytics.min.js"></script><script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/all.js"></script><script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.0/underscore-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.1.2/backbone-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.4/clipboard.min.js"></script>
<!-- end JS from CDN -->

<!-- JS bundle -->
<script src="https://d1pqmsyqo4bi9.cloudfront.net/assets/application-540c9105a735ebddd04e6412b9d2541a.js" type="text/javascript"></script><style type="text/css">cufon{text-indent:0!important;}@media screen,projection{cufon{display:inline!important;display:inline-block!important;position:relative!important;vertical-align:middle!important;font-size:1px!important;line-height:1px!important;}cufon cufontext{display:-moz-inline-box!important;display:inline-block!important;width:0!important;height:0!important;text-align:left!important;text-indent:-10000in!important;}cufon canvas{position:relative!important;}cufonshy.cufon-shy-disabled,.cufon-viewport-resizing cufonshy{display:none!important;}cufonglue{white-space:nowrap!important;display:inline-block!important;}.cufon-viewport-resizing cufonglue{white-space:normal!important;}}@media print{cufon{padding:0!important;}cufon canvas{display:none!important;}}</style>




<!-- end JS bundle -->

   

  <style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}</style></head>
  

  <body style="">
    

    
<div class="b-flag is_dent">
  <div class="container">
    
<div style="left:0px;" class="b-valign  b-valign--origin-left">
  <div class="b-valign__inner" >
      <h2 class="headline is_vaporable" style="opacity: 3.27318;">프로필 수정 페이지</h2>
  </div>
</div>
  </div>
</div>

<div class="b-content b-content--clean">
  <div class="container">
    
 <form:form modelAttribute="user" method="post" action="update.do">
<form:hidden path="id" value="${loginUser.id}" /> 
<div class="b-main " id="" role="main">
  
    


<div class="b-form-list b-form-list--top">
  <label class="b-form__label text-size_xs" for="user_profile_image">프로필 사진</label> 
  <div class="b-form__item">
    <div class="b-media has-no-pad has-no-gap">
      <div class="b-media__item">
        <div class="b-avatar" style="width: 60px">
       <c:if test="${!empty user.pic}">   
  <div style="width:60px; height:60px">
    <img  src="${user.pic}" style="width:60px; height:60px">
</div>   
</c:if>
     <c:if test="${empty user.pic}">   
  <div class="b-avatar__frame" style="width:60px; height:60px">
    <img alt="Avatar_4.png?ixlib=rb-1.1.0&amp;w=200&amp;h=250&amp;auto=format%2ccompress&amp;fit=facearea&amp;facepad=2" class="b-avatar__pic" src="https://tumblbug-upi.imgix.net/defaults/avatar_4.png?ixlib=rb-1.1.0&amp;w=200&amp;h=250&amp;auto=format%2Ccompress&amp;fit=facearea&amp;facepad=2.0&amp;ch=Save-Data&amp;mask=ellipse&amp;s=47b7f1fde4079f1f411c9d0c1c73fc83">
</div>   
</c:if>

</div>
      </div>
      <div class="b-media__body">
        <span class="text-size_xs">
          카카오 또는 네이버 프로필사진을 가져옵니다. 프로필 사진이<br>
           없는 경우 임시 사진으로 대체 됩니다.
        </span>
      </div>
    </div>
  </div>
</div>


 
<div class="b-form-list">
    <label class="b-form__label text-size_xs">
      닉네임
</label>    <form:input  path="nic" class="b-form__item form-field col-3" type="text"/> 
  </div>
  
  

  <c:if test="${user.gender eq 'male' }">
  <div class="b-form-list">  <label class="b-form__label text-size_xs">
     성별</label>
<input class="b-form__item form-field col-3" type="text" readonly
 value= '남자' > 
  </div>
  </c:if>
  <c:if test="${user.gender eq 'female' }">
  <div class="b-form-list">  <label class="b-form__label text-size_xs">
     성별</label>
<input class="b-form__item form-field col-3" type="text" readonly
 value= '여자' > 
  </div>
  </c:if>
  
  
  <div class="b-form-list">
    <label class="b-form__label text-size_xs">
      이름
</label>    <input class="b-form__item form-field col-3" type="search" value="${user.name }" readonly> 
  </div>

  

  <div class="b-form-list">
    <label class="b-form__label text-size_xs">
     나이
</label>    <input class="b-form__item form-field col-3" type="search" value="${user.age }" readonly> 
  </div>
 <div class="b-form-list">
    <label class="b-form__label text-size_xs">
      계좌번호
</label>    <input class="b-form__item form-field col-5" type="search" value="${sessionScope.a}-${sessionScope.b }-${sessionScope.c } " readonly> 
  </div>
   <div class="b-form-list">
    <label class="b-form__label text-size_xs">
      잔액
</label>    <input class="b-form__item form-field col-3" type="search" value="${user.money }" readonly> 
  </div>
   <div class="b-form-list">
    <label class="b-form__label text-size_xs">
      가입일자
</label>   <fmt:formatDate  var="date2" value="${user.signdate }" type="DATE" pattern="yyyy-MM-dd"/>

    <input class="b-form__item form-field col-3" type="search" value="${date2}" readonly> 
  </div>
  <div class="b-form-list">
    <label class="b-form__label text-size_xs">
   전화번호
</label>    <form:input path="tel" class="b-form__item form-field col-5" type="search"/> 
  </div>
  <div class="b-form-list b-form-list--top">
    <label class="b-form__label text-size_xs" for="user_short_description">
      소개글
</label>    <div class="b-form__item col-12">
      <form:textarea path="story" class="form-field" rows="3"/>
    </div>
  </div>
  <div class="b-form__item">
      <input class="b-button b-button_size_l" name="commit" type="submit" value="수정하기"> 
    </div>
</div>
</form:form>
</div></div> 
    <div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div>
</body></html>