<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ Hàng</title>
</head>
<body>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<h3 class="breadcrumb-header">Giỏ Hàng</h3>
					<ul class="breadcrumb-tree">
						<li><a href="./">Trang chủ</a></li>
						<li class="active">Quản lí giỏ hàng</li>
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
				<table
					style="border: 0px solid black; width: 100%; height: auto; margin-left: 20px; width: 200px 10px 10px 10px;">					
					<tr id="main"
						style="text-align: center; color: #cc0000; font-size: 120%; font-weight: bold;">
						<td>Hình ảnh</td>
						<td>Tên sản phẩm</td>
						<td>Số lượng</td>
						<td>Đơn giá</td>
						<td>Tổng cộng</td>
						<td>Thao tác</td>
					</tr>
					<c:forEach var="item" items="${cart }">
						<tr id="body" style="text-align: center;">
							<td><img
								src="<c:url value="/assets/user/img/${item.value.product.image }"/>"
								alt="" width="80px" height="100px"></td>
							<td><a href="./product&id=${item.value.product.id_product }">${item.value.product.name_product }</a></td>
							<td><input id="slg-update" min="1" max="5"
								style="width: 40px; background: #EEE; border-radius: 29%;"
								name="slg" type="number" value="${item.value.soluong }">&nbsp;</input></td>
							<td><fmt:formatNumber type="number" maxIntegerDigits="10"
									value="${item.value.product.pro_price}" /> vnđ</td>
							<td><fmt:formatNumber type="number" maxIntegerDigits="10"
									value="${item.value.soluong *item.value.product.pro_price }" />
								vnđ </td>
							<td><button
									data-id="${item.value.product.id_product}" class="btt-edit-qty"
									style="background: Green; color: #FFF">Update</button>&nbsp;<a
								href="./DelCart&idsp=${item.value.product.id_product }"><button
										style="background: RED; color: #FFF">X</button></a></td>
						</tr>
					</c:forEach>
				</table>
				<table
					style="float: right; margin-rigth: 20px; border: 1px solid black; width: 40%; height: auto; text-align: center;">
					<caption style="font-size: 120%;">THÔNG TIN ĐƠN HÀNG</caption>
					<tr>
						<td>TỔNG CỘNG:&nbsp;</td>
						<td style="color: red;"></td>
					</tr>
					<tr>
						<td style="color: red;"><fmt:formatNumber type="number" maxIntegerDigits="10"
									value="${price}" /> vnđ</td>
						<td><button
								style="background: RED; color: #FFF; border-radius: 10px; width: 0 20px 0 20px; margin-bottom: 10px;">
								<a href="./checkout">THANH TOÁN</a>
							</button></td>
					</tr>
				</table>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->
	<content tag="script">
	<script >
				$(".btt-edit-qty").on("click", function(){					
					var id = $(this).data("id");
					var quanty = $("#slg-update").val();
					//alert(quanty);
					window.location = "./edit&idsp="+id+"&slg="+quanty;
				});
	</script>
	</content>
</body>
</html>