<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh Toán</title>
</head>
<body>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<h3 class="breadcrumb-header">Thanh toán</h3>
					<ul class="breadcrumb-tree">
						<li><a href="./">Trang Chủ</a></li>
						<li class="active">Thanh toán</li>
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
			<div class="row">

				<div class="col-md-7">
					<form:form action="./checkout" method="POST" modelAttribute="oder">
						<!-- Billing Details -->

						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Thông Tin Thanh Toán</h3>
							</div>
							<div class="form-group">
								<input class="input" type="hidden" name="id_user" value="${user.id_user }"
									path="id_user">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="receiver" placeholder="Họ tên người nhận"
									path="receiver">
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email" placeholder="email"
									path="email">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="add_oder" placeholder="Dia Chi Nhan Hang"
									path="add_oder">
							</div>
							<div class="form-group">
								<input class="input" type="tel" name="phone"
									placeholder="Số Điện Thoại Đặt Hàng" path="phone">
							</div>
							<div class="form-group">
								<div class="input-checkbox">
									<input type="checkbox" id="create-account"> <label
										for="create-account"> <span></span> Tạo tài khoản?
									</label>
									<div class="caption">
										<p>Điển thông tin</p>
										<input class="input" type="password" name="password"
											placeholder="Enter Your Password">
									</div>
								</div>
							</div>
						</div>
						<!-- /Billing Details -->

						<!-- Shiping Details -->
						<div class="shiping-details">
							<div class="section-title">
								<h3 class="title">Địa chỉ giao hàng</h3>
							</div>
							<div class="input-checkbox">
								<input type="checkbox" id="shiping-address"> <label
									for="shiping-address"> <span></span> Thêm địa chỉ nhận
									hàng khác?
								</label>
								<div class="caption">
									<div class="form-group">
										<input class="input" type="text" name="first-name"
											placeholder="First Name">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="last-name"
											placeholder="Last Name">
									</div>
									<div class="form-group">
										<input class="input" type="email" name="email"
											placeholder="Email">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="address"
											placeholder="Address">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="city"
											placeholder="City">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="country"
											placeholder="Country">
									</div>
									<div class="form-group">
										<input class="input" type="text" name="zip-code"
											placeholder="ZIP Code">
									</div>
									<div class="form-group">
										<input class="input" type="tel" name="tel"
											placeholder="Telephone">
									</div>
								</div>
							</div>
						</div>
						<!-- /Shiping Details -->

						<!-- Order notes -->
						<div class="order-notes">
							<textarea class="input" placeholder="Ghi chú"></textarea>
						</div>
						<!-- /Order notes -->
				</div>

				<!-- Order Details -->
				<div class="col-md-5 order-details">
					<div class="section-title text-center">
						<h3 class="title">Thông tin giỏ hàng</h3>
					</div>
					<div class="order-summary">
						<div class="order-col">
							<div>
								<strong>Sản phẩm</strong>
							</div>
							<div>
								<strong>Tạm tính</strong>
							</div>
						</div>
						<c:forEach var="item" items="${cart }">
							<div class="order-products">
								<div class="order-col">
									<div>
										<a href="./product&id=${item.value.product.id_product }">${item.value.product.name_product }</a>&nbsp;x
										${item.value.soluong }
									</div>
									<div>
										<fmt:formatNumber type="number" maxIntegerDigits="10"
											value="${item.value.soluong *item.value.product.pro_price }" />
										vnđ
									</div>
								</div>
							</div>
						</c:forEach>
						<div class="order-col">
							<div>Phí giao hàng</div>
							<div>
								<strong>FREE</strong>
							</div>
						</div>
						<div class="order-col">
							<div>
								<strong>Tổng Cộng</strong>
							</div>
							<div>
								<strong class="order-total"><fmt:formatNumber
										type="number" maxIntegerDigits="10" value="${price}" /> vnđ</strong>
							</div>
						</div>
					</div>
					<div class="payment-method">
						<div class="input-radio">
							<input type="radio" name="payment" id="payment-1"> <label
								for="payment-1"> <span></span> Thanh toán khi nhận hàng
							</label>
							<div class="caption">
								<p>Thanh toán tiền cho shipper khi nhận được hàng</p>
							</div>
						</div>
						<div class="input-radio">
							<input type="radio" name="payment" id="payment-2"> <label
								for="payment-2"> <span></span> Thanh toán qua ngân hàng
							</label>
							<div class="caption">
								<p>
									Hệ thống có liên kết hổ trợ với các ngân hàng sau</br> Viettinbank,
									VBbank, DongAbank, Vietcombank, HSBS, MBbank, Teachcombank
								</p>
							</div>
						</div>
						<div class="input-radio">
							<input type="radio" name="payment" id="payment-3"> <label
								for="payment-3"> <span></span> Ví điện tử
							</label>
							<div class="caption">
								<p>
									Hệ thống hổ trợ thanh toán qua các ví điện tử sau:</br> Vimomo,
									Paypal và Zalopay
								</p>
							</div>
						</div>
					</div>
					<button class="primary-btn order-submit">ĐẶT HÀNG</button>
				</div>
				</form:form>
				<!-- /Order Details -->
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
							Đăng kí Email để nhận<strong>Thông tin mới nhất</strong>
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
</body>
</html>