<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<title>Trang Đăng Nhập</title>
<!-- Main style sheet -->
<link href="css/style.css" rel="stylesheet">
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
<link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">
<link href="view/client/css/login-register.css" rel="stylesheet" type="text/css">

</head>

<body>

	<!-- wpf loader Two -->
	<div id="wpf-loader-two" style="background: #00ff00">
		<div class="wpf-loader-two-inner">
			<span>Loading</span>
		</div>
	</div>
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->


	<div class="login-page">
		<div class="form">
			<form class="login-form" name="login-form" action="LoginPage"
				method="post">
				<h2>NongSan24h Xin Chào</h2>
				<input type="text" name="userName" placeholder="Tên Đăng Nhập" /> <input
					type="password" name="userPassword" placeholder="Mật Khẩu" />
				<button type="submit">Đăng Nhập</button>
				<p class="message">
					Bạn chưa có tài khoản? <a href="RegisterPage">Đăng ký</a>
				</p>
				<p style="color: red; font-size: 15">${thongBaoLoiLogin}</p>
			</form>
		</div>
	</div>

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript" src="js/jquery.smartmenus.js"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
	<!-- To Slider JS -->
	<script src="js/sequence.js"></script>
	<script src="js/sequence-theme.modern-slide-in.js"></script>
	<!-- Product view slider -->
	<script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="js/slick.js"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="js/nouislider.js"></script>
	<!-- Custom js -->
	<script src="js/custom.js"></script>

</body>

</html>