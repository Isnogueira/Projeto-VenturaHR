<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Cadastro de candidato</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<body>
<form action="/registrar" method="post">
    <div class="container text-center">
        <h2>Cadastro candidato</h2>
    </div>
    <div class="container">
        <label for="cpf">CPF:</label>
        <input type="text" class="form-control" placeholder="Entre com o CPF" name="cpf">
    </div>
    <br>
    </div>
    <div class="container">
        <label for="nome">Nome:</label>
        <input type="text" class="form-control" placeholder="Entre com o Nome" name="nome">
    </div>
    <br>
    </div>
    <div class="container">
        <label for="estado">Data de nascimento:</label>
        <input type="date" class="form-control" name="nascimento">
    </div>
    <hr>
     <div class="container">
        <label for="email">E-mail:</label>
        <input type="email" class="form-control" placeholder="Entre com o E-mail" name="email">
    </div>
    <br>
</div>
    <div class="container">
        <label for="senha">Senha:</label>
        <input type="password" class="form-control" placeholder="Entre com a senha" name="senha">
    </div>
    <br>
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
<html>