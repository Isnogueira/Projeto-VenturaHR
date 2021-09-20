<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="pt-BR">
<head>
<title>Registrar</title>
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

.navbar-brand {
	color: #000066
}

body {
	margin: 0;
	padding: 0;
	background-color: #ffffff;
	color: #000066;
	height: 100vh;
}

.bg-3 {
	background-color: #ffffff;
	color: #000066;
}

.bg-4 {
	background-color: #000066;
	color: #ffffff;
	padding: 15px;
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
		<h3>Registrar</h3>
	</div>
	<form action="/registro" method="post">
		<br>
		<div class="container">
			<c:if test="${not empty mensagemEmail}">
				<div class="alert alert-danger">
					<strong>ERRO: </strong>${mensagemEmail}
				</div>
			</c:if>
			<label for="email">E-mail:</label> <input type="email"
				class="form-control" placeholder="Entre com o e-mail" name="email">
		</div>
		<br>
		<div class="container">
			<c:if test="${not empty mensagemSenha}">
				<div class="alert alert-danger">
					<strong>ERRO: </strong>${mensagemSenha}
				</div>
			</c:if>
			<label for="senha">Senha:</label> <input type="password"
				class="form-control" placeholder="Entre com a senha" name="senha">
		</div>
		<br>
		<div class="container">
			<c:if test="${not empty mensagemTelefone}">
				<div class="alert alert-danger">
					<strong>ERRO: </strong>${mensagemTelefone}
				</div>
			</c:if>
			<label for="telefone">Telefone:</label> <input type="number"
				class="form-control" value="0" name="telefone">
		</div>
		<br>

		<div class="container">
			<h4>Escolha o tipo da conta:</h4>
			<br>
			<div class="radio">
				<label><input type="radio" name="tipo" value='C' checked>Candidato</label>
				<label><input type="radio" name="tipo" value='E'>Empresa</label>
			</div>
		</div>
		<hr>
		<div class="container">
			<h3>Se você é Candidato</h3>
		</div>
		<br>
		<div class="container">
			<c:if test="${not empty mensagemNome}">
				<div class="alert alert-danger">
					<strong>ERRO: </strong>${mensagemNome}
				</div>
			</c:if>
			<label for="nome">Nome:</label> <input type="text"
				class="form-control" placeholder="Entre com o nome" name="nome">
		</div>
		<br>
		<div class="container">
			<c:if test="${not empty mensagemCpf}">
				<div class="alert alert-danger">
					<strong>ERRO: </strong>${mensagemCpf}
				</div>
			</c:if>
			<label for="cpf">CPF:</label> <input type="text" class="form-control"
				placeholder="Entre com o CPF" name="cpf">
		</div>
		<hr>
		<div class="container">
			<h3>Se você é Empresa</h3>
		</div>
		<br>
		<div class="container">
		<c:if test="${not empty mensagemCnpj}">
				<div class="alert alert-danger">
					<strong>ERRO: </strong>${mensagemCnpj}
				</div>
			</c:if>
			<label for="cnpj">CNPJ:</label> <input type="text"
				class="form-control" placeholder="Entre com o cnpj" name="cnpj">
		</div>
		<br>
		<div class="container">
		<c:if test="${not empty mensagemRazaoSocial}">
				<div class="alert alert-danger">
					<strong>ERRO: </strong>${mensagemRazaoSocial}
				</div>
			</c:if>
			<label for="razaoSocial">Razão social:</label> <input type="text"
				class="form-control" placeholder="Entre com a Razão Social"
				name="razaoSocial">
		</div>
		<hr>
		<div class="container">
			<button type="submit" class="btn btn-primary btn-block">Enviar</button>
		</div>
		<br>
		<div class="container">
			<a href="/" class="btn btn-primary btn-block">Voltar</a>
		</div>
		<br>
	</form>
	<c:import url="/WEB-INF/jsp/footer.jsp" />
</body>
</html>