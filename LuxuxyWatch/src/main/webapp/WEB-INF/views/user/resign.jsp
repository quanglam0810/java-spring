<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<content tag="css">
	
<style>
body {
	background-color: #000
}

.padding {
	padding: 5rem !important
}

.signup-form {
	background-color: #fff;
	padding: 45px;
	border-radius: 1px
}

h2 {
	font-size: 36px;
	letter-spacing: 0.08em
}

.signup-form .form-control {
	font-size: 16px;
	padding: 10px 15px;
	color: #555;
	background-color: #fff;
	border-radius: 3px
}

.signup-form input {
	border: 1px solid #eee;
	height: 38px;
	box-shadow: none !important
}

.btn-blue {
	background: #44c5ee;
	padding: 10px 28px;
	border: 2px solid #44c5ee;
	color: #fff;
	border-radius: 50px;
	font-weight: 700;
	letter-spacing: 0.08em;
	-webkit-transition: 0.5s all;
	transition: 0.5s all;
	box-shadow: 0px 0px 60px 0px rgba(68, 197, 238, 0.6);
	outline: none !important
}

.btn-blue:hover, .btn-blue:focus, .btn-blue:active {
	background: #fff;
	color: #496174
}
</style>
</content>
<content tag="script">
<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</content>
<meta charset="ISO-8859-1">
<title>Đăng Kí</title>
</head>
<body>
	<div class="padding container d-flex justify-content-center">
		<div class="col-md-10 col-md-offset-1">
			<form:form class="signup-form" action="./resign" method = "POST" modelAttribute="customer">
				<h2 class="text-center">ĐĂNG KÍ TÀI KHOẢN</h2>
				<center><h2 style="color:Red;">${status }</h2></center>
				<hr>
				<div class="form-group">
					<form:input type="text" class="form-control" placeholder="Tên tài khoản"
						required="required" path="account_user"/>
				</div>
				<div class="form-group">
					<form:input type="text" class="form-control" placeholder="Mật khẩu"
						required="required" path="password_user"/>
				</div>
				<div class="form-group">
					<form:input type="text" class="form-control" placeholder="Họ và tên"
						required="required" path="user_name"/>
				</div>
				<div class="form-group">
					<form:input type="email" class="form-control" placeholder="Email"
						required="required" path="email"/>
				</div>
				<div class="form-group">
					<form:input type="address" class="form-control" placeholder="Địa Chỉ"
						required="required" path="address"/>
				</div>
				
				<div class="form-group text-center">
					<form:button type="submit" class="btn btn-blue btn-block">Đăng
						kí</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>