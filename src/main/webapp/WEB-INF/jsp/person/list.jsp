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
        Lista de Usuarios
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


      </tr>
      <c:forEach var="person" items="${personList}">
       <tr>
            <td>
                <a href="<%=request.getContextPath()%>/person/edit?id=${person.id}">Editar</a>
            </td>
            <td>
                <a href="<%=request.getContextPath()%>/person/delete?id=${person.id}">Deletar</a>
            </td>
            <td>
                ${person.id}
            </td>
            <td>
                ${person.name}
            </td>


        </tr>
      </c:forEach>
     </table>

      <br><br>


     <a href="<%=request.getContextPath()%>/person/create" class="btn btn-primary " role="button" aria-pressed="true">Add Person</a>

     <a href="<%=request.getContextPath()%>/login/logout" class="btn btn-primary " role="button" aria-pressed="true">Logout</a>




 </div>
</body>
</html>