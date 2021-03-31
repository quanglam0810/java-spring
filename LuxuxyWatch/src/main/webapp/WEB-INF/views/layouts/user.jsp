<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title><decorator:title default="MasterLayout"/></title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/bootstrap.min.css"/>"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/slick.css"/>"/>
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/slick-theme.css"/>"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/nouislider.min.css"/>"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="<c:url value="/assets/user/css/font-awesome.min.css"/>"/>

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/style.css"/>"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>	
	<%@ include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<%@ include file="/WEB-INF/views/layouts/user/menu.jsp"%>
	<decorator:body/>
		<%@ include file="/WEB-INF/views/layouts/user/footer.jsp"%>
		<!-- jQuery Plugins -->
		<script src="<c:url value="/assets/user/js/jquery.min.js"/>"></script>
		<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
		<script src="<c:url value="/assets/user/js/slick.min.js"/>"></script>
		<script src="<c:url value="/assets/user/js/nouislider.min.js"/>"></script>
		<script src="<c:url value="/assets/user/js/jquery.zoom.min.js"/>"></script>
		<script src="<c:url value="/assets/user/js/main.js"/>"></script>
		<decorator:getProperty property="page.script"></decorator:getProperty>
		<decorator:getProperty property="page.css"></decorator:getProperty>
	</body>
</html>
	