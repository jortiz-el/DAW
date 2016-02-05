<%-- 
    Document   : index
    Created on : 05-feb-2016, 14:34:24
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
        <jsp:useBean id = "contador" class = "com.contador.Contador" scope = "session" />
            <h1>has ingresado ${contador.sumaContador()} veces</h1>
    </body>
</html>
