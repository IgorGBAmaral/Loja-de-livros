<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>


<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" integrity="sha384-PmY9l28YgO4JwMKbTvgaS7XNZJ30MK9FAZjjzXtlqyZCqBY6X6bXIkM++IkyinN+" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap-theme.min.css" integrity="sha384-jzngWsPS6op3fgRCDTESqrEJwRKck+CILhJVO5VvaAZCq8JYf8HsR/HPpBOOPZfR" crossorigin="anonymous">

    <style>
    h1 {
    text-align: center;
    }

    body {
    background-color: lightblue;
    }
    </style>

</head>
<body>
    <div class="container">
        <h1>
             Faca o seu login
        </h1>

        ${message}
        <br><br>
        <form method="post" action="<%=request.getContextPath()%>/login/doLogin">

            <div class ="form-group form-group-1g">
                <label for="email" class="col-sm-1 control-label">Email:</label>
                <div>
                    <input type="email" name="email" class ="form-control" id="email"  >
                </div>
            </div>
            <br>
            <div class ="form-group form-group-1g">
                <label for="password" class="col-sm-1 control-label">Senha:</label>
                <div>
                    <input type="password" name="password" class ="form-control" id="password"  >
                </div>
                <br><br><br>
            </div>

            <br>

            <center>
                <button type="submit" class="btn btn-primary">Enviar</button>
                <a href="<%=request.getContextPath()%>/person/create" class="btn btn-primary" role="button" aria-pressed="true">Registrar</a>

            </center>
        </form>
    </div>

</body>
</html>