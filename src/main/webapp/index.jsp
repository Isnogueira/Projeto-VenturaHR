<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>VenturaHR - Login</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="/Nono-andar/css/estilo-login.css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
    <div class="wrapper fadeInDown">
        <div id="formContent">

        <form action="UsuarioController", method="post">
            <h2>VenturaHR</h2>
            <input type="text" id="nome" class="fadeIn second" name="nome" placeholder="Nome">
            <input type="email" id="email" class="fadeIn third" name="email" placeholder="E-mail">
            <input type="password" id="senha" class="fadeIn fourth" name="senha" placeholder="Senha">
            <input type="submit" class="fadeIn fifth" value="Log In">
        </form>
        </div>
    </div>
</html>