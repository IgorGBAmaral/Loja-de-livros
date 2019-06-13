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
        Novo registro de venda
        <br>
    </h1>

    <form method="post" action="<%=request.getContextPath()%>/store/create" class="form-horizontal">
        <div class="form-group form-group-lg">
            <label for="userid" class="col-sm-2 control-label">Identificação do usuario:</label>
            <div class="col-sm-10">
                <input type="number" name="userid" class="form-control" id="userid">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="bookid" class="col-sm-2 control-label">Identificação do livro:</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="bookid" id="bookid">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="username" class="col-sm-2 control-label">Nome de usuário:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="username" id="username">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="bookprice" class="col-sm-2 control-label">Preço do livro:</label>
            <div class="col-sm-10">
                <input type="number" step="0.01" class="form-control" name="bookprice" id="bookprice">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="idstore" class="col-sm-2 control-label">Identificação da compra:</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="idstore" id="idstore">
            </div>
        </div>

        <div style="">
            <button type="submit" class="btn btn-primary">Confirmar</button>
            <a href="<%=request.getContextPath()%>/store/list" class="btn btn-primary" role="button" aria-pressed="true">Retornar</a>
        </div>
    </form>

</div>

</body>
</html>