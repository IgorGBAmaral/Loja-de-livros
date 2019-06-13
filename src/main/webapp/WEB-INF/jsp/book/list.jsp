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
        Lista de Livros
    </h1>


    <table class="table table-striped">
        <style>
            background-color: darkblue;
        </style>
     <tr>
        <th>
            Editar
        </th>
         <th>
            Deletar
        </th>
        <th>
            Id
        </th>
        <th>
            Nome
        </th>
        <th>
            Autor
        </th>
        <th>
            Editora
        </th>
        <th>
            Ano
        </th>
         <th>
            Preço
         </th>

      </tr>
      <c:forEach var="book" items="${bookList}">
       <tr>
            <td>
                <a href="<%=request.getContextPath()%>/book/edit?id=${book.id}">Editar</a>
            </td>
            <td>
                <a href="<%=request.getContextPath()%>/book/delete?id=${book.id}">Deletar</a>
            </td>
            <td>
                ${book.id}
            </td>
            <td>
                ${book.title}
            </td>
            <td>
                ${book.author}
            </td>
            <td>
                ${book.editor}
            </td>
            <td>
                ${book.year}
            </td>
           <td>
                ${book.price}
           </td>

        </tr>
      </c:forEach>
     </table>

      <br><br>


     <a href="<%=request.getContextPath()%>/book/create" class="btn btn-primary " role="button" aria-pressed="true">Adicionar Livro</a>

     <a href="<%=request.getContextPath()%>/store/list" class="btn btn-primary " role="button" aria-pressed="true">Historico de vendas</a>

     <a href="<%=request.getContextPath()%>/login/logout" class="btn btn-primary " role="button" aria-pressed="true">Logout</a>




 </div>
</body>
</html>