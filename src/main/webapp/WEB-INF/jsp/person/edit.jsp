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
             Editar Usuario
        </h1>

        ${message}
        <br><br>
        <form method="post" action="<%=request.getContextPath()%>/person/edit">
            Nome:

            <input type="text" name="name"  value="${person.name}">
            <br><br>

            Email:
            <input type="email" name="email" value="${person.email}">
            <br><br>

            <input type="hidden" name="idPerson" value="${person.id}">
            <div style="">
                <button type="submit" class="btn btn-primary">Salvar</button>
                <a href="<%=request.getContextPath()%>/person/list" class="btn btn-primary " role="button" aria-pressed="true">Lista de Usuarios</a>
                <a href="<%=request.getContextPath()%>/login/logout" class="btn btn-primary" role="button" aria-pressed="true">Logout</a>
            </div>
        </form>


    </div>

</body>
</html>