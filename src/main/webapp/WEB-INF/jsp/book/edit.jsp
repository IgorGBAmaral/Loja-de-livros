<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import ="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
             Editar Livro
        </h1>

        ${message}
        <br><br>
        <form method="post" action="<%=request.getContextPath()%>/book/edit">

            Titulo:
            <input type="text" name="title"  value="${book.title}">
            <br><br>

            Autor:
            <input type="text" name="author"  value="${book.author}">
            <br><br>

            Editora:
            <input type="text" name="editor" value="${book.editor}">
            <br><br>

            Ano:
            <input type="number" name="year" value="${book.year}">
            <br><br>

            Ano:
            <input type="number" name="year" value="${book.price}">
            <br><br>


            <input type="hidden" name="idBook" value="${book.id}">
            <div style="">
                <button type="submit" class="btn btn-primary">Salvar</button>
                <a href="<%=request.getContextPath()%>/book/list" class="btn btn-primary " role="button" aria-pressed="true">Lista de Livros</a>
                <a href="<%=request.getContextPath()%>/login/logout" class="btn btn-primary" role="button" aria-pressed="true">Logout</a>
            </div>
        </form>


    </div>

</body>
</html>