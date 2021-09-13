<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
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
<head>
<body>
	<form action="/registro" method="post">
		<div class="container text-center">
			<h2>Registrar</h2>
		</div>
		<br>
		<div class="container">
			<label for="email">E-mail:</label> <input type="email"
				class="form-control" placeholder="Entre com o e-mail" name="email">
		</div>
		<br>
		<div class="container">
			<label for="senha">Senha:</label> <input type="password"
				class="form-control" placeholder="Entre com a senha" name="senha">
		</div>
		<br>
		<div class="container">
			<label for="telefone">Telefone:</label> <input type="number"
				class="form-control" placeholder="xx xxxxx-xxxx"
				name="telefone">
		</div>
		<br>

		<div class="container">
			<h4>Escolha o tipo da conta:</h4>
			<br>
			<div class="radio">
				<label><input type="radio" name="tipo" value="C" checked>Candidato</label>
				<label><input type="radio" name="tipo" value="E">Empresa</label>
			</div>
		</div>
		<hr>
		<div class="container">
			<h3>Se você é Candidato</h3>
		</div>
		<br>
		<div class="container">
			<label for="nome">Nome:</label> <input type="text"
				class="form-control" placeholder="Entre com o nome" name="nome">
		</div>
		<br>
		<div class="container">
			<label for="cpf">CPF:</label> <input type="text" class="form-control"
				placeholder="Entre com o CPF" name="cpf">
		</div>
		<hr>
		<div class="container">

			<h3>Se você é Empresa</h3>
		</div>
		<br>
		<div class="container">
			<label for="cnpj">CNPJ:</label> <input type="number"
				class="form-control" placeholder="Entre com o cnpj" name="cnpj">
		</div>
		<br>
		<div class="container">
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
</body>
</html>