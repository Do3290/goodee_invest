<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:set var="path" value="${pageContext.request.contextPath}" />		
    

<!DOCTYPE HTML>
<html>
	<head>
		<title>invest</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
			<link rel="stylesheet" href="${path}/css/skel.css"> 
			<link rel="stylesheet" href="${path}/css/style.css"><link rel="stylesheet" href="${path}/css/style-xlarge.css">
			<link rel="stylesheet" href="${path}/css/help.css">
	</head>
<style>
	.section-tree .section {
    flex: 0 0 45%;
    /* Two columns for tablet and desktop. Leaving 5% separation between columns */
  }
  a:link {
  text-decoration: none !important;
}
	section.img {
	    background-image: url(https://theme.zdassets.com/theme_assets/730708/fa7f58bbfdf24bea535653143dddb8b31e156a21.jpg);
	    }
	div.block-title {
    	padding: 20px 20px;
    	position: absolute;
    	top: 0;
    	left: 0;
    	bottom: 0;
    	width: 33.33%;
    	overflow: hidden;
	}
	div.block{
		padding: 20px 20px;
    	background-color: white;
    	margin-bottom: 10px;
    	position: relative;
	}
	.block-description {
    font-size: 0.8rem;
    line-height: 1.6;
    color: #666;
	}
	a{
	color: #191919;
	text-decoration: none;
	}
	.block-articles-items
	{
	  	z-index: 5;
   	 	text-decoration: none;
    	color: #191919;
    	width: 100%;
    	border: 1px solid #EFEDED;
    	background-color: #ffffff;
    	display: block;
    	padding: 12px 16px;
    	height: 100%;
    	font-size: 0.9rem;
    	text-decoration: none;
	}
	.block-articles-terms
	{
	  	z-index: 5;
    	color: #191919;
    	border: 1px solid #EFEDED;
    	background-color: #ffffff;
    	display: block;
    	padding: 12px 16px;
    	height: 100%;
    	font-size: 0.9rem;
	}
	.section h2, .section-title {
    font-size: 17px;
    font-weight: bold;
    color: #757575;
    display: block;
    flex-basis: 100%;
    margin-bottom: 15px;
    text-align: left;
	}
	.nav-wrapper a {
    display: inline-block;
    padding: 0;
    margin: 0 10px;
	}
	.user-nav[aria-expanded="true"] {
  	background-color: #fff;
  	border-top: solid 1px #ddd;
  	right: 0;
  	left: 0;
  	top: 71px;
  	z-index: 1;
	}
	.footer {
    font-size: 12px;
    color: #757575;
    max-width: 1160px;
    margin: 0 auto;
    padding: 0 5%;
    display: flex;
    justify-content: space-between;
	}
	.p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
	}
	.block-description {
    font-size: 0.8rem;
    line-height: 1.6;
    color: #666;
	}
	.block-articles {
    display: flex;
    flex-wrap: wrap;
    align-items: stretch;
    margin-left: -3px;
    margin-right: -3px;
	}
	.item {
    z-index: 5;
    text-decoration: none;
    color: #191919;
    background-color: #ffffff;
    display: block;
    padding: 12px 16px;
    height: 100%;
    font-size: 0.9rem;
	}	
	.title {
    z-index: 5;
    text-decoration: none;
    color: #191919;
    background-color: #ffffff;
    padding: 12px 16px;
    height: 100%;
    font-size: 1.0rem;
    }
	textarea{
		border: 1px solid #ddd;
    	border-radius: 2px;
    	resize: vertical;
    	width: 100%;
    	outline: none;
    	padding: 10px;
    	min-height: 150px;
	}
	.block-articles-item {
    z-index: 5;
    text-decoration: none;
    color: #191919;
    border: 1px solid #EFEDED;
    background-color: #ffffff;
    display: block;
    padding: 12px 16px;
    height: 100%;
    font-size: 0.9rem;
    flex-basis: 50%;
	}
	
	.block-content {
 	  padding-left: 33.33%;
  	  min-height: 90px;
	}
	ul {
    list-style: none;
    margin: 0;
    padding: 0;
	}	
	li {
    display: list-item;
    text-align: -webkit-match-parent;
	}
		.gROBpc {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    background: #ffffff;
    border-bottom: 1px solid #d9dcdc;
     width: 1080px;
    margin: 0 auto;
	}
	.dVmjva {
    list-style-type: none;
    padding: 0;
    margin: 0;
    margin-bottom: -1px;
	}
	.jpLVMg {
    padding: 13px;
    cursor: pointer;
    display: block;
    font-weight: 400;
    border-bottom: 1px solid transparent;
    font-size: 0.9em;
    color: #878787;
    border-bottom-color: transparent;
    -webkit-transition: all 0.18s ease-out;
    transition: all 0.18s ease-out;
	}
.gFwOfK {
    margin: 0;
    padding-left: 13px;
    font-size: 1.2em;
    font-weight: 600;
}
		p{
		font-size:14px;
	}
	div.4u{
	flex: 1;
    max-height: 45px;
    overflow: hidden;
    padding: 10px 0;
    position: relative;
}
	.wrapper style1{
	max-width: 1160px;
    margin: 0 auto;
    padding: 0 5%;
    padding-top: 0px;
    padding-right: 5%;
    padding-bottom: 0px;
    padding-left: 5%;
}
</style>
		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="${path}/help/help.do">help center</a></h1>
				<nav id="nav">
					<ul>
						<li><h3><a href="${path}/page/main.do">Invest로</a></h3></li>
						<li><a href="${path}/help/message.do" class="button special">문의하기</a></li>
					</ul>
				</nav>
			</header>
<!-- body -->
		
	

		<decorator:body/>
		<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<div class="row double">
						<div class="6u">
							<div class="row collapse-at-2">
								<div class="6u">
									<h3>Accumsan</h3>
									<ul class="alt">
										<li><a href="#">Nascetur nunc varius</a></li>
										<li><a href="#">Vis faucibus sed tempor</a></li>
										<li><a href="#">Massa amet lobortis vel</a></li>
										<li><a href="#">Nascetur nunc varius</a></li>
									</ul>
								</div>
								<div class="6u">
									<h3>Faucibus</h3>
									<ul class="alt">
										<li><a href="#">Nascetur nunc varius</a></li>
										<li><a href="#">Vis faucibus sed tempor</a></li>
										<li><a href="#">Massa amet lobortis vel</a></li>
										<li><a href="#">Nascetur nunc varius</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="6u">
							<h2>Aliquam Interdum</h2>
							<p>Blandit nunc tempor lobortis nunc non. Mi accumsan. Justo aliquet massa adipiscing cubilia eu accumsan id. Arcu accumsan faucibus vis ultricies adipiscing ornare ut. Mi accumsan justo aliquet.</p>
							<ul class="icons">
								<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
								<li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
							</ul>
						</div>
					</div>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li>
						<li>Design: <a href="http://templated.co">TEMPLATED</a></li>
						<li>Images: <a href="http://unsplash.com">Unsplash</a></li>
					</ul>
				</div>
			</footer>

	</body>
</html>