<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

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

               <br><br>
                <a href="<%=request.getContextPath()%>/book/list">Lista de Livros</a>
                  <br><br>
                <a href="<%=request.getContextPath()%>/login/logout">Logout</a>
    </body>
</html>