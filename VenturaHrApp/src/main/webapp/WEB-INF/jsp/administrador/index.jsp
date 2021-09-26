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
<style>
.navbar {
	background-color;
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
	color:#000066;
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
</style>
<head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp" />
	<div class="container">
		<h3>Bem vindo(a) ${user.nome} !!</h3>
	</div>
	<br>
	<div class="container">
		<a href="/" class="btn btn-primary btn-block">Voltar</a>
	</div>
	<c:import url="/WEB-INF/jsp/footer.jsp" />
</body>
</html>
