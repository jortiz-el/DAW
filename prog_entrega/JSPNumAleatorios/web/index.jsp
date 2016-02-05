<%-- 
    Document   : index
    Created on : 31-ene-2016, 11:25:45
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>10 numeros aleatorios!</h1>
        <jsp:useBean id="mybean" scope="page" class="com.numero.aleatorio" />
        <%for (int i = 0; i < 10; i++){%>
        <h2>${mybean.numAleatorio()}</h2>
        <%}%>
    </body>
</html>
