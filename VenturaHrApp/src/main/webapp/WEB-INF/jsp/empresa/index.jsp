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
	color: #000066;
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
	<br>
	<div class=container>
		<c:if test="${not empty vagas}">
			<div class="container-fluid bg-3 text-center">
				<h3>Vagas publicadas</h3>
				<a href="/publicar" class="btn btn-primary">Publicar Vaga</a>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Cargo</th>
						<th>Cidade</th>
						<th>Forma de contratação</th>
						<th>Critérios</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vaga" items="${vagas}">
						<tr>
							<td>${vaga.cargo}</td>
							<td>${vaga.cidade}</td>
							<td>${vaga.formaContratacao}</td>
							<td><c:forEach var="criterio" items="${vaga.criterioList}">
	                           		${criterio.descricao} <br>
								</c:forEach></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<c:if test="${empty vagas}">
			<div class="container">
				<div class="container-fluid bg-3 text-center">
					<h3>Não há vagas publicadas</h3>
					<a href="/publicar" class="btn btn-primary">Publicar Vaga</a>
				</div>
			</div>
		</c:if>
	</div>
	<c:import url="/WEB-INF/jsp/footer.jsp" />
</body>
</html>
