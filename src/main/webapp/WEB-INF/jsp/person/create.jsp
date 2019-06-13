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

</head>
<body>
<div class="container">
    <style>
        h1 {
        text-align: center;
        }
        body {
        background-color: lightblue;
        }
    </style>
    <h1>
        Cadastro de usuario
        <br>
    </h1>

    <form method="post" action="<%=request.getContextPath()%>/person/create" class="form-horizontal">
        <div class="form-group form-group-lg">
            <label for="name" class="col-sm-2 control-label">Nome:</label>
            <div class="col-sm-10">
                <input type="text" name="name" class="form-control" id="name">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="email" class="col-sm-2 control-label">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="email" id="email">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="password" class="col-sm-2 control-label">Senha:</label>
            <div class="col-sm-10">
                <input type="password" name="password" class="form-control" id="password">
            </div>
        </div>

        <div style="">
            <button type="submit" class="btn btn-primary">Confirmar</button>
            <a href="<%=request.getContextPath()%>/login/doLogin" class="btn btn-primary" role="button" aria-pressed="true">Retornar</a>
        </div>
    </form>

</div>




</body>
</html>