<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<title>Trang Đăng Nhập</title>
<!-- Main style sheet -->
<link href="view/client/css/style.css" rel="stylesheet">
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
<link id="switcher" href="view/client/css/theme-color/default-theme.css" rel="stylesheet">
<link href="view/client/css/login-register.css" rel="stylesheet" type="text/css">

</head>

<body>

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
	<script src="view/client/js/bootstrap.js"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript" src="view/client/js/jquery.smartmenus.js"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript" src="view/client/js/jquery.smartmenus.bootstrap.js"></script>
	<!-- To Slider JS -->
	<script src="view/client/js/sequence.js"></script>
	<script src="view/client/js/sequence-theme.modern-slide-in.js"></script>
	<!-- Product view slider -->
	<script type="text/javascript" src="view/client/js/jquery.simpleGallery.js"></script>
	<script type="text/javascript" src="view/client/js/jquery.simpleLens.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="view/client/js/slick.js"></script>
	<!-- Price picker slider -->
	<script type="text/javascript" src="view/client/js/nouislider.js"></script>
	<!-- Custom js -->
	<script src="view/client/js/custom.js"></script>

</body>

</html>