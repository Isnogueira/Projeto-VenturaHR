<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<body>
 <form action="/login" method="post">
    <div class="container">
         <c:if test="${not empty mensagem}">
            <div class="alert alert-danger">
                <strong>ERRO: </strong>${mensagem}
            </div>
         </c:if>
    </div>
     <br>
     <div class="container text-center">
        <h2>Login</h2>
     </div>
     <div class="container">
             <label for="email">E-mail:</label>
             <input type="email" class="form-control" placeholder="Entre com o E-mail" name="email">
     </div>
     <br>
     <div class="container">
         <label for="senha">Senha:</label>
         <input type="password" class="form-control" placeholder="Entre com a senha" name="senha">
     </div>
     <br>
       <div class="container">
            <button type="submit" class="btn">Log-in</button>
            <h3>Ou <a href="/registro">registre-se aqui</a></h3>
       </div>
     <br>
  </form>
 </body>
</html>