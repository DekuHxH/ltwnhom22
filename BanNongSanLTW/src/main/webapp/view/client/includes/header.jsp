<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client" var="url"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Nông Sản 22</title>

<!-- Font awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
          integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link href="${url}/css/font-awesome.css" rel="stylesheet">
    
    <!-- Bootstrap -->
    <link href="${url}/css/bootstrap.css" rel="stylesheet">   
     <link rel="icon" href="${url}/images/favicon.png" type="image/x-icon">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="${url}/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="${url}/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="${url}/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="${url}/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="${url}/css/theme-color/default-theme.css" rel="stylesheet">
    
    <!-- Top Slider CSS -->
    <link href="${url}/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="${url}/css/style.css" rel="stylesheet">  
<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body> 
   <!-- wpf loader Two -->
    <div id="wpf-loader-two" >
		<div class="wpf-loader-two-inner">
			<span style="color:#ffffff">Loading</span>
		</div>
	</div>
    <!-- / wpf loader Two -->       
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


  <!-- Start header section -->
  <header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-top-area">
              <!-- start header top left -->
              <div class="aa-header-top-left">
                <!-- start language -->
                <div class="aa-language">
                  <div class="dropdown">
                    <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                      <img src="${url}/images/vietnam.png" alt="english flag">Việt Nam
                    </a>
                  </div>
                </div>
                <!-- / language -->

                
                
              </div>
              <!-- / header top left -->
              	<div class="aa-header-top-right">
					<ul class="aa-head-top-nav-right">
					<c:if test="${sessionScope.username != null}">
					<li><a><strong>Xin Chào</strong> ${sessionScope.username}</a></li>
					<li class="hidden-xs"><a href="LogOut">Đăng xuất</a></li>
					</c:if>
					<c:if test="${sessionScope.username == null}">
					<li><a href="${pageContext.request.contextPath}/LoginPage">Đăng nhập</a></li>
					</c:if>
					</ul>
				</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header top  -->


    <!-- start header bottom  -->
    <div class="aa-header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-bottom-area">
              <!-- logo  -->
              <div class="aa-logo">
                <!-- Text based logo -->
                <a href="${pageContext.request.contextPath}/">
                  <span class="fa fa-shopping-cart"></span>
                  <p>Nhóm<strong>22</strong> <span>Bán nông sản</span></p>
                </a>
                <!-- img based logo -->
                <!-- <a href="index.jsp"><img src="img/logo.jpg" alt="logo img"></a> -->
              </div>
              <!-- / logo  -->
               <!-- cart box -->
              <div class="aa-cartbox">
                <a class="aa-cart-link" href="${pageContext.request.contextPath}/view/client/cart">
                  <span class="fa fa-shopping-basket"></span>
                  <span class="aa-cart-title">Giỏ hàng</span>
                  <c:if test="${length_order != NULL}">
                  	<span class="aa-cart-notify">${length_order}</span>
                  </c:if>
                </a>
                <div class="aa-cartbox-summary">
                  <ul>
                    <c:forEach items="${order.items}" var="item" >
                    <li>
                      <a class="aa-cartbox-img" href="${pageContext.request.contextPath}/view/client/cart"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${item.product.image_link}" alt="img"></a>
                      <div class="aa-cartbox-info">
                        <h4><a href="${pageContext.request.contextPath}/view/client/cart">${item.product.name}</a></h4>
                        <p>${item.qty} x ${item.product.price * (1-((item.product.discount)/100))}00 VNĐ</p>
                      </div>
                    </li>
                   	</c:forEach>
                  </ul>
                  <div class="total-detailproduct">
                  		<span class="aa-cartbox-total-title">
                        <b>Tổng:</b>
                      </span>
                      <span class="aa-cartbox-total-price">
                        ${sumprice} VNĐ
                      </span>
                  </div>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="${pageContext.request.contextPath}/view/client/cart">Chi tiết</a>
                  <a class="aa-cartbox-checkout aa-primary-btn" href="${pageContext.request.contextPath}/view/client/checkout">Thanh toán</a>
                </div>
              </div>
              <!-- / cart box -->
              <!-- search box -->
              <div class="aa-search-box">
                <form action="${pageContext.request.contextPath}/view/client/product/search" method="GET">
                  <input type="text" name="s" id="" placeholder="Tìm kiếm sản phẩm..">
                 <button class="serach-box"><span class="fa fa-search"></span></button>
                </form>
              </div>
              <!-- / search box -->             
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- / header bottom  -->
  </header>
  <!-- / header section -->
  
  
  
  
  <!-- menu -->
  <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
          <div class="navbar-collapse collapse">
            <!-- Left nav -->
            <ul class="nav navbar-nav">
              <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
              <li><a href="">Giới thiệu</a></li>
              <li><a href="${pageContext.request.contextPath}/view/client/product">Sản phẩm <span class="caret"></span></a>
                <ul class="dropdown-menu">  
                  <li><a href="${pageContext.request.contextPath}/view/client/product-id?id=1">Rau củ</a></li>                                                                
                  <li><a href="${pageContext.request.contextPath}/view/client/product-id?id=2">Trái cây</a></li>
                  <li><a href="${pageContext.request.contextPath}/view/client/product-id?id=3">Các loại hạt</a></li>            
                  <li><a href="${pageContext.request.contextPath}/view/client/product-id?id=4">Khác</a></li>           
                </ul>
              </li>
              <li><a href="${pageContext.request.contextPath}/view/client/policy">Chính sách</a></li>
              <li><a href="${pageContext.request.contextPath}/view/client/orderGuide">Hướng dẫn</a></li>
              <li><a href="${pageContext.request.contextPath}/view/client/contact">Liên hệ</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>       
    </div>
  </section>
  <!-- / menu -->