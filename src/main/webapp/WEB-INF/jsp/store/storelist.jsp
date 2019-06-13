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

     <tr>
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
         <th>
             Comprar
         </th>
      </tr>
      <c:forEach var="book" items="${bookList}">
       <tr>

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
           <td>

               <form method="post" action="<%=request.getContextPath()%>/store/storelist" class="form-horizontal">
                           <input type="hidden" name="userid" class="form-control" id="userid" value="1">
                           <input type="hidden" class="form-control" name="bookid" id="bookid" value="${book.getId()}">
                           <input type="hidden" class="form-control" name="username" id="username" value="1">
                           <input type="hidden" step="0.01" class="form-control" name="bookprice" id="bookprice" value="${book.getPrice()}">

                   <div style="">
                       <button type="submit" class="btn btn-primary">Comprar</button>
                       <%--<a href="<%=request.getContextPath()%>/store/bought" class="btn btn-primary" role="button" aria-pressed="true"></a>--%>
                   </div>
               </form>

           </td>
        </tr>
      </c:forEach>
     </table>

      <br><br>


     <%--<a href="<%=request.getContextPath()%>/store/bought" class="btn btn-primary " role="button" aria-pressed="true">Comprar</a>--%>

     <a href="<%=request.getContextPath()%>/login/logout" class="btn btn-primary " role="button" aria-pressed="true">Logout</a>




 </div>
</body>
</html>

<%--<input type="hidden" name="userid" class="form-control" id="userid" value="${usuario.getId()}">--%>
<%--<input type="hidden" class="form-control" name="username" id="username" value="${usuario.getName()}">--%>
