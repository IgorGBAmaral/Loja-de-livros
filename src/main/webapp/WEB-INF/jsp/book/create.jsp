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
        Novo cadastro de livro
        <br>
    </h1>

    <form method="post" action="<%=request.getContextPath()%>/book/create" class="form-horizontal">
        <div class="form-group form-group-lg">
            <label for="title" class="col-sm-2 control-label">Titulo:</label>
            <div class="col-sm-10">
                <input type="text" name="title" class="form-control" id="title">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="author" class="col-sm-2 control-label">Autor:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="author" id="author">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="editor" class="col-sm-2 control-label">Editora:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="editor" id="editor">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="year" class="col-sm-2 control-label">Ano:</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="year" id="year">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label for="price" class="col-sm-2 control-label">Preço:</label>
            <div class="col-sm-10">
                <input type="number" step="0.01" class="form-control" name="price" id="price">
            </div>
        </div>

        <div style="">
            <button type="submit" class="btn btn-primary">Confirmar</button>
            <a href="<%=request.getContextPath()%>/book/list" class="btn btn-primary" role="button" aria-pressed="true">Retornar</a>
        </div>
    </form>

</div>

</body>
</html>

