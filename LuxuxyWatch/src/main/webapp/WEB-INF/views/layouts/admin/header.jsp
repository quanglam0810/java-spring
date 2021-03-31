<%@ page language="java" contentType="text/html;" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<!-- HEADER -->
<head>
<meta charset="UTF-8">
</head>
<!-- TOP HEADER -->
<div id="top-header">
	<div class="container">
		<ul class="header-links pull-left">
			<li><a href="#"><i class="fa fa-phone"></i> +84 98 503 4354</a></li>
			<li><a href="mailto:quanglam9610@gmail.com"><i
					class="fa fa-envelope-o"></i> quanglam0810@gmail.com</a></li>
			<li><a
				href="https://www.google.com/maps/place/THPT+Nguy%E1%BB%85n+B%E1%BB%89nh+Khi%C3%AAm/@12.7133709,108.2881676,17.75z/data=!4m13!1m7!3m6!1s0x3171e58b53aef0f1:0xab17fdc7db047c5c!2zdHQuIFBoxrDhu5tjIEFuLCBUeC4gQnXDtG4gSOG7kywgxJDhuq9rIEzhuq9r!3b1!8m2!3d12.7109301!4d108.3029652!3m4!1s0x3171e70000000001:0x32cce6bf51b74c3f!8m2!3d12.7138043!4d108.288553?hl=vi-VN"></i>Phước
					An - Việt Nam</a></li>
		</ul>
		<ul class="header-links pull-right">
			<li><a href="#"><i class="fa fa-dollar"></i> VND</a></li>
			<c:if test="${ empty user }">
			<li><a href="./login"><i class="fa fa-user-o"></i>Đăng Nhập </a></li></c:if>
			<c:if test="${ not empty user }">
			<li><a href="./profile&id=${user.id_user }"><i class="fa fa-user-o"></i>Xin Chào: ${user.user_name }</a>&nbsp;&nbsp;<a href="./login">Đăng xuất</a></li></c:if>
			
		</ul>
	</div>
</div>
<!-- /TOP HEADER -->

<!-- MAIN HEADER -->
<div id="header">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- LOGO -->
			<div class="col-md-3">
				<div class="header-logo">
					<a href="./" class="logo"> <img
						src="<c:url value="assets/user/img/logo4.png"/>" alt="">
					</a>
				</div>
			</div>
			<!-- /LOGO -->

			<!-- SEARCH BAR -->
			<div class="col-md-6">
				<div class="header-search">
					<form>
						<select class="input-select">
							<option value="0">Tất cả</option>
							<option value="1">Máy cơ</option>
							<option value="1">Máy pin</option>
							<option value="1">Eco-Driver</option>
						</select> <input class="input" placeholder="Nhập từ khóa">
						<button class="search-btn">Tìm Kiếm</button>
					</form>
				</div>
			</div>
			<!-- /SEARCH BAR -->

			<!-- ACCOUNT -->
			<div class="col-md-3 clearfix">
				<div class="header-ctn">
					<!-- Wishlist -->
					<div>
						<a href="#"> <i class="fa fa-heart-o"></i> <span>Yêu
								Thích </span>
							<div class="qty">2</div>
						</a>
					</div>
					<!-- /Wishlist -->

					<!-- Cart -->
					<div class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="true"> <i class="fa fa-shopping-cart"></i> <span>Giỏ
								Hàng</span>
							<div class="qty">${qty}</div>
						</a>
						<div class="cart-dropdown">
							<c:forEach var="item" items="${cart }">
								<div class="cart-list">
									<div class="product-widget">
										<div class="product-img">
											<img src="./assets/user/img/${item.value.product.image }"
												alt="">
										</div>
										<div class="product-body">
											<h3 class="product-name">
												<a href="./product&id=${item.value.product.id_product }">${item.value.product.name_product }</a>
											</h3>
											<h4 class="product-price">
												<span class="qty">${item.value.soluong }x</span><fmt:formatNumber type="number" maxIntegerDigits="10"
									value="${item.value.product.pro_price}" />
												vnd
											</h4>
										</div>
										<a href="./DelCart&idsp=${item.value.product.id_product}">
										<button class="delete">
											<i class="fa fa-close"></i>
										</button></a>
									</div>
								</div>
							</c:forEach>
							<div class="cart-summary">
								<small>${qty} Sản Phẩm</small>
								<h5><fmt:formatNumber type="number" maxIntegerDigits="10"
									value="${price}" /></h5>
							</div>
							<div class="cart-btns">
								<a href="./cart">Xem giỏ hàng</a> <a href="./checkout">Thanh
									toán <i class="fa fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- /Cart -->

					<!-- Menu Toogle -->
					<div class="menu-toggle">
						<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
						</a>
					</div>
					<!-- /Menu Toogle -->
				</div>
			</div>
			<!-- /ACCOUNT -->
		</div>
		<!-- row -->
	</div>
	<!-- container -->
</div>
<!-- /MAIN HEADER -->

<!-- /HEADER -->