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
        Informações de venda
    </h1>


    <table class="table table-striped">
        <style>
            background-color: darkblue;
        </style>
     <tr>
        <%--<th>
            Editar
        </th>--%>
         <th>
            Deletar
        </th>
        <th>
            Id Usuario
        </th>
        <th>
            Id Livro
        </th>
        <th>
            Nome do Usuario
        </th>
        <th>
            Preço do livro
        </th>
        <th>
            Id da compra
        </th>


      </tr>
      <c:forEach var="store" items="${storeList}">
       <tr>
            <%--<td>
                <a href="<%=request.getContextPath()%>/store/edit?id=${store.id}">Editar</a>
            </td>--%>
            <td>
                <a href="<%=request.getContextPath()%>/store/delete?id=${store.id}">Deletar</a>
            </td>
            <td>
                ${store.userid}
            </td>
            <td>
                ${store.bookid}
            </td>
            <td>
                ${store.username}
            </td>
            <td>
                ${store.bookprice}
            </td>
            <td>
                ${store.id}
            </td>


        </tr>
      </c:forEach>
     </table>

      <br><br>


     <a href="<%=request.getContextPath()%>/store/create" class="btn btn-primary " role="button" aria-pressed="true">Adicionar Venda</a>

     <a href="<%=request.getContextPath()%>/book/list" class="btn btn-primary " role="button" aria-pressed="true">Lista de livros</a>

     <a href="<%=request.getContextPath()%>/login/logout" class="btn btn-primary " role="button" aria-pressed="true">Logout</a>




 </div>
</body>
</html>