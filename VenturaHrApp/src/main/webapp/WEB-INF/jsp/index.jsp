<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<title>Index</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<style>
.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}

.navbar-nav li a:hover {
	color: #1abc9c !important;
}

body {
	margin: 0;
	padding: 0;
	background-color: #ffffff;
	height: 100vh;
}

.bg-4 {
	background-color: #000066;
	color: #ffffff;
	padding: 15px;
}

.bg-3 {
	background-color: #ffffff;
	color: #000066;
	

}
.container-fluid {
	padding-top: 70px;
	padding-bottom: 70px;
}

.jumbotron {
	background-color: #000066;
	color: #fff;
	padding: 100px 50px;
}
</style>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp" />
	<div class="jumbotron text-center">
		<h1>Ventura HR</h1>
		<p>Projeto de bloco do Bloco de Java do Instituto Infnet</p>
		<p>Desenvolvido por Ingrid Nogueira</p>
		<c:if test="${empty user}">
			<a href="/registro" class="btn btn-default btn-lg">Registre-se
				aqui</a>
		</c:if>
	</div>
	<c:import url="/WEB-INF/jsp/footer.jsp" />
</body>
</html>
