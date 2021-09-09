<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<body>
	<div class=container>
		<h4>Bem vindo(a) ${user.nome} !</h4>
	</div>
	<div class="container">
		<h3>Vagas publicadas</h3>
		<c:if test="${not empty vagas}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Cargo</th>
						<th>Cidade</th>
						<th>Forma de contratação</th>
						<th>Critérios</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vaga" items="${vagas}">
						<tr>
							<td>${vaga.id}</td>
							<td>${vaga.cargo}</td>
							<td>${vaga.cidade}</td>
							<td>${vaga.formaContratação}</td>
							<td>
								<c:forEach var="criterio" items="${vaga.criterioList}">
                            		${criterio.descricao} <br>
								</c:forEach>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<c:if test="${empty vagas}">
			<div class="container">
				<h3>
					Não há vagas publicadas
				</h3>
			</div>
		</c:if>
	</div>
</body>
</html>
