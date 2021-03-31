<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>

<head>
<title>Trang Chu</title>
</head>
<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="<c:url value="/assets/user/img/Dong-ho-Thuy-Sy-Swiss-Made-Watches.png"/>" alt="">
					</div>
					<div class="shop-body">
						<h3>					
							Swiss made<br>Siêu chất
						</h3>
						<a href="#" class="cta-btn">Xem ngay<i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="<c:url value="/assets/user/img/dong-ho-deo-tay-Nhat-ban-01.jpg"/>" alt="">
					</div>
					<div class="shop-body">
						<h3>
							Japan watch<br>Rẻ - Đẹp - Bền
						</h3>
						<a href="#" class="cta-btn">Xem ngay <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="<c:url value="/assets/user/img/tourbillon-05.jpg"/>" alt="">
					</div>
					<div class="shop-body">
						<h3>
							Tourbillon Watch<br>Siêu phẩm đẳng cấp
						</h3>
						<a href="#" class="cta-btn">Xem ngay <i
							class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">

			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h3 class="title">Sản Phẩm Mới Nhất</h3>
					<div class="section-nav">
						<ul class="section-tab-nav tab-nav">
							<li class="active"><a data-toggle="tab" href="#tab1">Automatic</a></li>
							<li><a data-toggle="tab" href="#tab1">Eco-Driver</a></li>
							<li><a data-toggle="tab" href="#tab1">Quart</a></li>
							<li><a data-toggle="tab" href="#tab1">Other</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /section title -->

			<!-- Products tab & slick -->
			<div class="col-md-12">
				<div class="row">
					<div class="products-tabs">
						<!-- tab -->
						<div id="tab1" class="tab-pane active">
							<div class="products-slick" data-nav="#slick-nav-1">							
								<!-- product -->
								<c:forEach var="item" items="${Product}">
								<div class="product">
								<a href="./product&id=${item.id_product }">
									<div class="product-img">
										<img src="<c:url value="/assets/user/img/${item.image}"/>"
											alt="">
										<div class="product-label">
											<span class="new">NEW</span>
										</div>
									</div>
									</a>
									<div class="product-body">
										<p class="product-category">${item.type_name}</p>
										<h3 class="product-name">
											<a href="./product&id=${item.id_product }">${item.name_product}</a>
										</h3>																				
										<h4 class="product-price"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" /></p>	VNĐ									
										</h4>
										<div class="product-rating">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist">
												<i class="fa fa-heart-o"></i><span class="tooltipp">Yêu Thích</span>
											</button>
											<button class="add-to-compare">
												<i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span>
											</button>
											<button class="quick-view">
												<i class="fa fa-eye"></i><span class="tooltipp">Xem Nhanh</span>
											</button>
										</div>
									</div>
									<div class="add-to-cart">
										<a href="./addcart&idsp=${item.id_product}"><button class="add-to-cart-btn">
											<i class="fa fa-shopping-cart"></i>Thêm Vào Giỏ Hàng
										</button></a>
									</div>
								</div>
								</c:forEach>
								<!-- /product -->
								<!-- product -->							
								<!-- /product -->
								<!-- product -->								
								<!-- /product -->
							</div>
							<div id="slick-nav-1" class="products-slick-nav"></div>
						</div>
						<!-- /tab -->
					</div>
				</div>
			</div>
			<!-- Products tab & slick -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- HOT DEAL SECTION -->
<div id="hot-deal" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<div class="hot-deal">
					<ul class="hot-deal-countdown">
						<li>
							<div>
								<h3>12</h3>
								<span>Ngày</span>
							</div>
						</li>
						<li>
							<div>
								<h3>10</h3>
								<span>Giờ</span>
							</div>
						</li>
						<li>
							<div>
								<h3>34</h3>
								<span>Phút</span>
							</div>
						</li>
						<li>
							<div>
								<h3>60</h3>
								<span>Giây</span>
							</div>
						</li>
					</ul>					
					<a class="primary-btn cta-btn" href="#">Mua ngay!!</a>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /HOT DEAL SECTION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">

			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h3 class="title">Đồng Hồ Đang Giảm Giá</h3>
					<div class="section-nav">
					<ul class="section-tab-nav tab-nav">
							<li class="active"><a data-toggle="tab" href="#tab1">Automatic</a></li>
							<li><a data-toggle="tab" href="#tab1">Eco-Driver</a></li>
							<li><a data-toggle="tab" href="#tab1">Quart</a></li>
							<li><a data-toggle="tab" href="#tab1">Other</a></li>
						</ul>						
					</div>
				</div>
			</div>
			<!-- /section title -->

			<!-- Products tab & slick -->
			<div class="col-md-12">
				<div class="row">
					<div class="products-tabs">
						<!-- tab -->
						<div id="tab2" class="tab-pane fade in active">
							<div class="products-slick" data-nav="#slick-nav-2">
								<!-- product -->
								<c:forEach var="item" items="${ProductSale}">
								<div class="product">
								<a href="./product&id=${item.id_product }">
									<div class="product-img">
									
										<img src="<c:url value="/assets/user/img/${item.image}"/>"
											alt="">
										<div class="product-label">
											<span class="sale">-${item.sale}%</span>
										</div>										
									</div>
									</a>
									<div class="product-body">
										<p class="product-category">${item.type_name }</p>
										<h3 class="product-name">
											<a href="./product&id=${item.id_product }">${item.name_product}</a>
										</h3>
										<h4 class="product-price"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price-((item.pro_price/100)*item.sale)}" />
											<del class="product-old-price"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" /> VND</del>
										</h4>
										<div class="product-rating">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist">
												<i class="fa fa-heart-o"></i><span class="tooltipp">Yêu Thích</span>
											</button>
											<button class="add-to-compare">
												<i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span>
											</button>
											<button class="quick-view">
												<i class="fa fa-eye"></i><span class="tooltipp">Xem Nhanh</span>
											</button>
										</div>
									</div>
									<div class="add-to-cart">
										<a href="./addcart&idsp=${item.id_product}"><button class="add-to-cart-btn">
											<i class="fa fa-shopping-cart"></i>Thêm Vào Giỏ Hàng
										</button></a>
									</div>
								</div>
								</c:forEach>
								<!-- /product -->

								<!-- product -->
								
								<!-- /product -->

								<!-- product -->
								
								<!-- /product -->

								<!-- product -->
								
								<!-- /product -->

								<!-- product -->
								
								<!-- /product -->
							</div>
							<div id="slick-nav-2" class="products-slick-nav"></div>
						</div>
						<!-- /tab -->
					</div>
				</div>
			</div>
			<!-- /Products tab & slick -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-4 col-xs-6">
				<div class="section-title">
					<h4 class="title">Nổi Bật</h4>
					<div class="section-nav">
						<div id="slick-nav-3" class="products-slick-nav"></div>
					</div>
				</div>

				<div class="products-widget-slick" data-nav="#slick-nav-3">
				
					<div>
					<c:forEach var="item" items="${ProductAuto}" varStatus="index">
						<!-- product widget -->
						<div class="product-widget">
							<div class="product-img">
								<img src="<c:url value="/assets/user/img/${item.image}"/>"
									alt="">
							</div>
							<div class="product-body">
								<p class="product-category">${item.brand_name }</p>
								<h3 class="product-name">
									<a href="./product&id=${item.id_product}">${item.name_product}</a>
								</h3>
								<h4 class="product-price">
									<fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" />
									<del class="product-old-price"></del>
								</h4>
							</div>
						</div>
						<!-- /product widget -->						
						</c:forEach>
					</div>
					<div>
					<c:forEach var="item" items="${ProductAuto}" varStatus="index">
						<!-- product widget -->
						<div class="product-widget">
							<div class="product-img">
								<img src="<c:url value="/assets/user/img/${item.image}"/>"
									alt="">
							</div>
							<div class="product-body">
								<p class="product-category">${item.brand_name }</p>
								<h3 class="product-name">
									<a href="./product&id=${item.id_product }">${item.name_product}</a>
								</h3>
								<h4 class="product-price"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" />
									<del class="product-old-price">VNĐ</del>
								</h4>
							</div>
						</div>
						<!-- /product widget -->
						</c:forEach>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-xs-6">
				<div class="section-title">
					<h4 class="title">Top Bán Chạy</h4>
					<div class="section-nav">
						<div id="slick-nav-4" class="products-slick-nav"></div>
					</div>
				</div>

				<div class="products-widget-slick" data-nav="#slick-nav-4">
					<div>
					<c:forEach var="item" items="${ProductAuto}" varStatus="index">								
						<!-- product widget -->
						<div class="product-widget">
							<div class="product-img">
								<img src="<c:url value="/assets/user/img/${item.image}"/>"
									alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Đồng Hồ</p>
								<h3 class="product-name">
									<a href="./product&id=${item.id_product}">${item.name_product}</a>
								</h3>
								<h4 class="product-price"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" />									
									<del class="product-old-price">VND</del>
								</h4>
							</div>
						</div>
													
						</c:forEach>											
					</div>
					<div>
					<c:forEach var="item" items="${ProductAuto}" varStatus="index">
						<!-- product widget -->
						<div class="product-widget">
							<div class="product-img">
								<img src="<c:url value="/assets/user/img/${item.image}"/>"
									alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Đồng Hồ</p>
								<h3 class="product-name">
									<a href="./product&id=${item.id_product}">${item.name_product }</a>
								</h3>
								<h4 class="product-price">
									<fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" />
									<del class="product-old-price">VND</del>
								</h4>
							</div>
						</div>
						<!-- /product widget -->
						</c:forEach>										
					</div>
				</div>
			</div>

			<div class="clearfix visible-sm visible-xs"></div>

			<div class="col-md-4 col-xs-6">
				<div class="section-title">
					<h4 class="title">Top Yêu Thích</h4>
					<div class="section-nav">
						<div id="slick-nav-5" class="products-slick-nav"></div>
					</div>
				</div>

				<div class="products-widget-slick" data-nav="#slick-nav-5">
					<div>
					<c:forEach var="item" items="${ProductAuto}" varStatus="index">
						<!-- product widget -->
						<div class="product-widget">
							<div class="product-img">
								<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Đồng Hồ</p>
								<h3 class="product-name">
									<a href="./product&id=${item.id_product }">${item.name_product }</a>
								</h3>
								<h4 class="product-price">
									<fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" />
									<del class="product-old-price">VNĐ</del>
								</h4>
							</div>
						</div>
						<!-- /product widget -->
						</c:forEach>											
					</div>

					<div>
					<c:forEach var="item" items="${ProductAuto}" varStatus="index">
						<!-- product widget -->
						<div class="product-widget">
							<div class="product-img">
								<img src="<c:url value="/assets/user/img/${item.image }"/>"
									alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Đồng Hồ</p>
								<h3 class="product-name">
									<a href="./product&id=${item.id_product }">${item.name_product }</a>
								</h3>
								<h4 class="product-price">
									<fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" />
									<del class="product-old-price">VNĐ</del>
								</h4>
							</div>
						</div>
						<!-- /product widget -->	
						</c:forEach>										
					</div>
				</div>
			</div>

		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

<!-- NEWSLETTER -->
<div id="newsletter" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<div class="newsletter">
					<p>
						ĐĂNG kÍ ĐỂ NHẬN<strong>THÔNG BÁO MỚI NHẤT</strong>
					</p>
					<form>
						<input class="input" type="email" placeholder="Enter Your Email">
						<button class="newsletter-btn">
							<i class="fa fa-envelope"></i> Subscribe
						</button>
					</form>
					<ul class="newsletter-follow">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /NEWSLETTER -->

