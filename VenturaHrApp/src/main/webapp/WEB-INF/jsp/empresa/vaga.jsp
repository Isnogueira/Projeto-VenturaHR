<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<title>Publicar vaga</title>
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
	<div class="container-fluid bg-3 text-center">
		<h3>Publicar vaga</h3>
	</div>
	<form action="/descricao" method="post">
		<div class="form-group">
			<input type="hidden" name="idUsuario" value="${user.id}">
		</div>
		<br>
		<div class="container">
			<label for="email">Cargo</label> <input type="text"
				class="form-control" value="${vaga.cargo}" name="cargo">
		</div>
		<br>
		<div class="container">
			<label for="cidade">Cidade</label> <input type="text"
				class="form-control" value="${vaga.cidade}" name="cidade">
		</div>
		<br>
		<div class="container">
			<label for="formaContratacao">Forma de contratação:</label> <input
				type="text" class="form-control" value="${vaga.formaContratacao}"
				name="formaContratacao">
		</div>
		<br>
		<div class="container">
			<button type="submit" class="btn btn-primary">Próximo</button>
		</div>
	</form>
	<hr>
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Descrição</th>
					<th>Perfil</th>
					<th>Peso</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="criterio" items="${criterios}" varStatus="id">
					<tr>
						<td>${criterio.descricao}</td>
						<td>${criterio.perfil}</td>
						<td>${criterio.peso}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>	
	<c:if test="${not empty vaga}">
		<form action="/criterios" method="post">
			<div class="container">
				<div class="col-sm-3 nopadding">
					<div class="form-group">
						<input type="text" class="form-control" name="descricao">
					</div>
				</div>
				<div class="col-sm-3 nopadding">
					<div class="form-group">
						<div class="input-group">
							<div class="form-group">
								<input type="number" class="form-control" name="perfil">
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 nopadding">
					<div class="form-group">
						<input type="number" class="form-control" name="peso">
					</div>
				</div>
				<div class="col-sm-3 nopadding">
					<div class="input-group-btn">
						<button class="btn btn-info" type="submit">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						</button>
						<button class="btn btn-info" type="reset">
							<span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
						</button>
					</div>
				</div>
			</div>
		</form>
		<form action="/publicar" method="post">
			<div class="container">
				<button type="submit" class="btn btn-primary">Enviar</button>
			</div>
		</form>
	</c:if>
	<br>
	<c:import url="/WEB-INF/jsp/footer.jsp" />
</body>
</html>