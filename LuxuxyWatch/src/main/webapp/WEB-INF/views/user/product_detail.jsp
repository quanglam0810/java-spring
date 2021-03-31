<%@ page language="java" contentType="text/html;"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<head>
<meta charset="UTF-8">
<title>Sản Phẩm</title>
</head>
<body>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<ul class="breadcrumb-tree">
						<li><a href="#">Trang Chủ</a></li>					
						<li class="active">Chi tiết sản phẩm</li>
					</ul>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /BREADCRUMB -->
	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->			
			<c:forEach var="item" items="${ProductBYId}">
			<div class="row">		
				<!-- Product main img -->
				<div class="col-md-5 col-md-push-2">
					<div id="product-main-img">
						<div class="product-preview">
						<c:if test="${item.image != null}">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
							<c:if test="${item.image == null }">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
						</div>

						<div class="product-preview">
							<c:if test="${item.image_1 != null}">
							<img src="<c:url value="/assets/user/img/${item.image_1 }"/>" alt="">
							</c:if>
							<c:if test="${item.image_1 == null }">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
						</div>

						<div class="product-preview">
							<c:if test="${item.image_2 != null}">
							<img src="<c:url value="/assets/user/img/${item.image_2 }"/>" alt="">
							</c:if>
							<c:if test="${item.image_2 == null }">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
						</div>

						<div class="product-preview">
							<c:if test="${item.image_3 != null}">
							<img src="<c:url value="/assets/user/img/${item.image_3 }"/>" alt="">
							</c:if>
							<c:if test="${item.image_3 == null }">
							<img src="<c:url value="/assets/user/${item.image }"/>" alt="">
							</c:if>
						</div>
					</div>
				</div>				
				<!-- /Product main img -->				
				<!-- Product thumb imgs -->
				<div class="col-md-2  col-md-pull-5">
					<div id="product-imgs">
						<div class="product-preview">
							<c:if test="${item.image != null }">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
							<c:if test="${item.image == null}">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
						</div>

						<div class="product-preview">
							<c:if test="${item.image_1 != null}">
							<img src="<c:url value="/assets/user/img/${item.image_1 }"/>" alt="">
							</c:if>
							<c:if test="${item.image_1 == null }">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
						</div>

						<div class="product-preview">
							<c:if test="${item.image_2 != null}">
							<img src="<c:url value="/assets/user/img/${item.image_2 }"/>" alt="">
							</c:if>
							<c:if test="${item.image_2 == null }">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
						</div>

						<div class="product-preview">
							<c:if test="${item.image_3 != null}">
							<img src="<c:url value="/assets/user/img/${item.image_3 }"/>" alt="">
							</c:if>
							<c:if test="${item.image_3 == null }">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							</c:if>
						</div>
					</div>
				</div>			
				<!-- /Product thumb imgs -->				
				<!-- Product details -->
				<div class="col-md-5">
					<div class="product-details">
						<h2 class="product-name">${item.name_product}</h2>
						<div>
							<div class="product-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>
							</div>
							<a class="review-link" href="#">10 Đánh giá | Thêm đánh giá của bạn</a>
						</div>
						<div>
							<h3 class="product-price">Giá bán:&emsp; <fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price-((item.pro_price/100)*item.sale)}" />
								<del class="product-old-price"><fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price}" /></del>
							</h3>
							<span class="product-available">vnđ</span>
						</div>
						<p>
						<strong>Thương hiệu:</strong>&nbsp; ${item.brand_name }
						</br><strong>Mã sản phẩm:</strong>&nbsp; ${item.codeProduct }
						</br><strong>Loại máy:</strong>&nbsp; ${item.type_name }
						</br><strong>Xuất xứ:</strong>&nbsp; ${item.brand_address }
						</br><strong>Tình trạng:</strong>&nbsp;	Còn hàng
						</p>

						<div class="product-options">
							<label> Size Mặt:&nbsp;	${item.sizeCase }
							</label> </br>
							<label> Màu sắc:&nbsp;	${item.colorCase }							
							</label>
						</div>

						<div class="add-to-cart">
							<div class="qty-label">
								Số lượng
								<div class="input-number">
									<input type="number" value="1"> <span class="qty-up">+</span> <span
										class="qty-down">-</span>
								</div>
							</div>
							<a href="./addcart&idsp=${item.id_product}"><button class="add-to-cart-btn">
								<i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ
							</button></a>
						</div>

						<ul class="product-btns">
							<li><a href="#"><i class="fa fa-heart-o"></i>&nbsp;	Yêu thích</a></li>
							<li><a href="#"><i class="fa fa-exchange"></i>&nbsp; So sánh</a></li>
						</ul>						
						<ul class="product-links">
							<li>Share:</li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-envelope"></i></a></li>
						</ul>

					</div>
				</div>
				
				<!-- /Product details -->

				<!-- Product tab -->
				<div class="col-md-12">
					<div id="product-tab">
						<!-- product tab nav -->
						<ul class="tab-nav">
							<li class="active"><a data-toggle="tab" href="#tab1">Thông tin sản phẩm</a></li>
							<li><a data-toggle="tab" href="#tab2">Bảng kích thước</a></li>
							<li><a data-toggle="tab" href="#tab3">Đánh giá (3)</a></li>
						</ul>
						<!-- /product tab nav -->

						<!-- product tab content -->
						<div class="tab-content">
							<!-- tab1  -->
							<div id="tab1" class="tab-pane fade in active">
								<div class="row">
									<div class="col-md-12">
										<p>
										${item.info_product }
										</p>
									</div>
								</div>
							</div>
							<!-- /tab1  -->

							<!-- tab2  -->
							<div id="tab2" class="tab-pane fade in">
								<div class="row">
									<div class="col-md-12">
										<p>
										<table width="500px" style="margin-left:50px;">
										<caption><strong>Size mặt đồng hồ theo chuẩn Quốc Tế như sau.</strong></caption>
										
										<tr height="40px"><td>Phân loại size mặt phổ biến:</td></tr>
										<tr height="40px"><td>Đồng hồ cho nữ giới:</td></tr>

										<tr height="40px"><td>- Cỡ nhỏ (Women's Mini): 23 - 25mm </td></tr>

										<tr height="40px"><td>- Cỡ phổ biến (Women's Regular): 26 - 29mm</td></tr>

										<tr height="40px"><td>- Cỡ lớn (Mid size): 34-36mm</td></tr>

										<tr height="40px"><td>Đồng hồ cho nam giới:</td></tr>

										<tr height="40px"><td>- Cỡ thường (Men's): 37 - 39 mm</td></tr>

										<tr height="40px"><td>- Cỡ thể thao (Men's Sport): 40 - 42 mm</td></tr>

										<tr height="40px"><td>- Cỡ lớn (Men XL): 45 mm</td></tr>
										</table>
										</p>
									</div>
								</div>
							</div>
							<!-- /tab2  -->

							<!-- tab3  -->
							<div id="tab3" class="tab-pane fade in">
								<div class="row">
									<!-- Rating -->
									<div class="col-md-3">
										<div id="rating">
											<div class="rating-avg">
												<span>4.5</span>
												<div class="rating-stars">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star-o"></i>
												</div>
											</div>
											<ul class="rating">
												<li>
													<div class="rating-stars">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i>
													</div>
													<div class="rating-progress">
														<div style="width: 80%;"></div>
													</div> <span class="sum">3</span>
												</li>
												<li>
													<div class="rating-stars">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<div class="rating-progress">
														<div style="width: 60%;"></div>
													</div> <span class="sum">2</span>
												</li>
												<li>
													<div class="rating-stars">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<div class="rating-progress">
														<div></div>
													</div> <span class="sum">0</span>
												</li>
												<li>
													<div class="rating-stars">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<div class="rating-progress">
														<div></div>
													</div> <span class="sum">0</span>
												</li>
												<li>
													<div class="rating-stars">
														<i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
															class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<div class="rating-progress">
														<div></div>
													</div> <span class="sum">0</span>
												</li>
											</ul>
										</div>
									</div>
									<!-- /Rating -->

									<!-- Reviews -->
									<div class="col-md-6">
										<div id="reviews">
											<ul class="reviews">
												<li>
													<div class="review-heading">
														<h5 class="name">John</h5>
														<p class="date">27 DEC 2018, 8:0 PM</p>
														<div class="review-rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o empty"></i>
														</div>
													</div>
													<div class="review-body">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua</p>
													</div>
												</li>
												<li>
													<div class="review-heading">
														<h5 class="name">John</h5>
														<p class="date">27 DEC 2018, 8:0 PM</p>
														<div class="review-rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o empty"></i>
														</div>
													</div>
													<div class="review-body">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua</p>
													</div>
												</li>
												<li>
													<div class="review-heading">
														<h5 class="name">John</h5>
														<p class="date">27 DEC 2018, 8:0 PM</p>
														<div class="review-rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-o empty"></i>
														</div>
													</div>
													<div class="review-body">
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit, sed do eiusmod tempor incididunt ut labore et
															dolore magna aliqua</p>
													</div>
												</li>
											</ul>
											<ul class="reviews-pagination">
												<li class="active">1</li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
											</ul>
										</div>
									</div>
									<!-- /Reviews -->

									<!-- Review Form -->
									<div class="col-md-3">
										<div id="review-form">
											<form class="review-form">
												<input class="input" type="text" placeholder="Your Name">
												<input class="input" type="email" placeholder="Your Email">
												<textarea class="input" placeholder="Your Review"></textarea>
												<div class="input-rating">
													<span>Your Rating: </span>
													<div class="stars">
														<input id="star5" name="rating" value="5" type="radio"><label
															for="star5"></label> <input id="star4" name="rating"
															value="4" type="radio"><label for="star4"></label>
														<input id="star3" name="rating" value="3" type="radio"><label
															for="star3"></label> <input id="star2" name="rating"
															value="2" type="radio"><label for="star2"></label>
														<input id="star1" name="rating" value="1" type="radio"><label
															for="star1"></label>
													</div>
												</div>
												<button class="primary-btn">Submit</button>
											</form>
										</div>
									</div>
									<!-- /Review Form -->
								</div>
							</div>
							<!-- /tab3  -->
						</div>
						<!-- /product tab content  -->
					</div>
				</div>
				<!-- /product tab -->
			</div>
			</c:forEach>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
	<!-- Section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<div class="col-md-12">
					<div class="section-title text-center">
						<h3 class="title">SẢN PHẨM LIÊN QUAN</h3>
					</div>
				</div>
				<c:forEach var="item" items="${getbrand}">
				<!-- product -->
				<div class="col-md-3 col-xs-6">
					<div class="product">
						<div class="product-img">
							<img src="<c:url value="/assets/user/img/${item.image }"/>" alt="">
							<div class="product-label">								
							</div>
						</div>
						<div class="product-body">
							<p class="product-category">${item.brand_name }</p>
							<h3 class="product-name">
								<a href="./product&id=${item.id_product }">${item.name_product }</a>
							</h3>
							<h4 class="product-price">
								<fmt:formatNumber type="number" maxIntegerDigits="10" value="${item.pro_price-((item.pro_price/100)*item.sale)}" />								
							</h4>
							<div class="product-rating"></div>
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
								<i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ 
							</button></a>
						</div>
					</div>
				</div>
				<!-- /product -->
				<div class="clearfix visible-sm visible-xs"></div>	
				</c:forEach>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /Section -->