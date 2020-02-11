<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html lang="ko" class="row-clear js flexbox rgba opacity video boxsizing no-maclike no-ios no-ie"><head>
    <meta charset="utf-8">
    <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${loginUser.name}님이 만든 프로젝트 (0) :: 텀블벅</title>
    </head>
    <meta content="authenticity_token" name="csrf-param">
<meta content="oBoMQZ4uQUvHYgB4U9srTDQ3NMw/J4EPRlgT3hjkuj0=" name="csrf-token">
    
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

<!-- JS from CDN -->
<script type="text/javascript" src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
<script type="text/javascript" src="https://www.google-analytics.com/analytics.js"></script>
<script src="https://connect.facebook.net/ko_KR/all.js?hash=ec5cb3282e3bd0c58cec26539f6a3628&amp;ua=modern_es6"crossorigin="anonymous"></script>
<script type="text/javascript"  src="https://d2om2e6rfn032x.cloudfront.net/analytics.js/v1/jMrtLL6v6xXmMGP7h/analytics.min.js"></script>
<script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/all.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.0/underscore-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.1.2/backbone-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.4/clipboard.min.js"></script>
<!-- end JS from CDN -->
<!-- JS bundle -->
<script src="https://d1pqmsyqo4bi9.cloudfront.net/assets/application-033f659a6e4f2af1f013cdc6f82ed3b9.js" type="text/javascript"></script><style type="text/css">cufon{text-indent:0!important;}@media screen,projection{cufon{display:inline!important;display:inline-block!important;position:relative!important;vertical-align:middle!important;font-size:1px!important;line-height:1px!important;}cufon cufontext{display:-moz-inline-box!important;display:inline-block!important;width:0!important;height:0!important;text-align:left!important;text-indent:-10000in!important;}cufon canvas{position:relative!important;}cufonshy.cufon-shy-disabled,.cufon-viewport-resizing cufonshy{display:none!important;}cufonglue{white-space:nowrap!important;display:inline-block!important;}.cufon-viewport-resizing cufonglue{white-space:normal!important;}}@media print{cufon{padding:0!important;}cufon canvas{display:none!important;}}</style>
<!-- end JS bundle -->
      <script type="text/javascript">
    !function(){var analytics=window.analytics=window.analytics||[];if(!analytics.initialize)if(analytics.invoked)window.console&&console.error&&console.error("Astronomer snippet included twice.");else{analytics.invoked=!0;analytics.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","reset","group","track","ready","alias","page","once","off","on"];analytics.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);e.unshift(t);analytics.push(e);return analytics}};for(var t=0;t<analytics.methods.length;t++){var e=analytics.methods[t];analytics[e]=analytics.factory(e)}analytics.load=function(t){var e=document.createElement("script");e.type="text/javascript";e.async=!0;e.src=("https:"===document.location.protocol?"https://":"http://")+"d2om2e6rfn032x.cloudfront.net/analytics.js/v1/"+t+"/analytics.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(e,n)};analytics.SNIPPET_VERSION="3.1.0";
      analytics.load("jMrtLL6v6xXmMGP7h");

          analytics.identify("6ff6e0b0-e847-4ee7-8fef-358ded128a3d", {
              email: "kkh12182@naver.com",
              name: "kkh1****"
          });

      analytics.page(null, {
        client_id: getAnonymousId(),
        user_id: getUserId()
      });
    }}();
  </script>

  <style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}</style></head>
  

  <body style="">
    

    
<div class="b-flag b-flag--h is_dent">
  <div class="container">
    
<div style="left:0px" class="b-valign text-align_center fitin ">
  <div class="b-valign__inner">

    <!--[if IE 7]>
    <div class="b-valign__ie7_helper">
      <![endif]-->

      <div class="changable-content">
    
<c:if test= "${!empty loginUser.pic && loginUser.pic!=('https://ssl.pstatic.net/static/pwe/address/img_profile.png')}">
<img  src="${loginUser.pic }" style="width:116px; height:106px; border-radius:70%">
</c:if>

<c:if test= "${empty loginUser.pic || loginUser.pic==('https://ssl.pstatic.net/static/pwe/address/img_profile.png')}" >
		<img src="../img/null_profile.png"style="width:136px; height:152px;">
</c:if>

        <h1 class="headline text-size_3xl is_vaporable">
          ${dbuser.nic }
        </h1>
      <ul class="b-meta is_vaporable">

        </ul>
      </div>
      </div>
  </div>
</div>
  </div>



<div class="b-content b-content--clean">
  <div class="container">
    
  
<div class="b-main b-main--extended b-main--centered" id="" role="main">
  
    <div class="row has-pad-bottom">
      <div class="row has-gap-dot5">
        <h3 class="text-size_m has-no-gap u-inline_block">만든 프로젝트</h3>
        <span class="text-theme_primary" style="margin-left: 6px;">
          ${listcount }
        </span>개
      </div>
      
    </div>
    <c:forEach var="project" items="${userproject}">
<div class="b-project-card">
  <figure class="b-project-card__head">
    <a class="b-project-card__head__link"
     href="../page/info.do?num=${project.project_num}">
      <div class="b-project-card__head__link__inner">
        <div class="b-project-card__head__filter"></div>
        <img style="width:216px; height:162px;"src="../page/file/${project.main_imageurl}">
      </div>
    </a>
  </figure>

  <div class="b-project-card__body" style="overflow-wrap: break-word;">
    <h3 class="b-project-card__title">
      <a href="/edit-project/f4fabf7d-d8ab-4b51-998b-d7a536b65f1f/sections/project-outline" class="[ yoke yoke--theme_light ]"></a>
    </h3>
   <%--  <input type= "hidden" value="${project.subject_num }" name= "project_num"> --%>
    <p class="b-project-card__creator">
      ${project.subject }
    </p>
  </div>
  <p class="b-project-card__blurb">
      <button onclick="location.href='../user/supportuserlist.do?num=${project.project_num}'"> 후원목록 보러가기</button>
    </p>
  <div class="b-project-card__gauge [ b-gauge ]">
    
    <div class="b-gauge__liquid" style="width: 0%">
    </div>
  </div>
  <div class="b-project-card__figures">

    <div class="[ b-project-card__figure b-project-card__figure_for_amount ]">
      <span class="b-project-card__figure-title">모인 금액</span>
      <span class="b-project-card__figure-item">
        ${project.goal}
        <span class="b-project-card__percentage">
          0 %
        </span>
      </span>
    </div>
    <div class="[ b-project-card__figure b-project-card__figure_for_day ]">
        <span class="b-project-card__figure-title">
        남은 시간
          <c:if test = '${project.deadline>0}'>
          ${project.deadline } 일</c:if>
          <c:if test = '${project.deadline==0 }'>
          	마감임박</c:if>
          	<c:if test = '${project.deadline<0 }'>
          	마감
          	</c:if>
        </span><span class="b-project-card__figure-item">
        </span>
    </div>
  </div>
</div>
</c:forEach>
</div>
</div></div> 
    <div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://staticxx.facebook.com/connect/xd_arbiter.php?version=45#channel=f24e9a23b505698&amp;origin=https%3A%2F%2Ftumblbug.com" style="border: none;"></iframe></div><div></div></div></div>

    <script>
      $(document).ready(function(e){
        Tumblbug.views.global_view();
        Tumblbug.views.users_show_view();
      });
    </script>
    
    


  



<script type="text/javascript" src="//browser-update.org/update.js"></script></body></html>