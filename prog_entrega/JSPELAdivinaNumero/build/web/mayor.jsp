<%-- 
    Document   : mayor
    Created on : 31-ene-2016, 10:01:33
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servelet adivina un numero</title>
    </head>
    <body>
        <h1>Tu numero es mayor que el numero secreto Sigue intentando...</h1>
        <form action="jugada" method="post">
            Escribe un numero : <input type="number" name="num" min="0" max="100"/>
            <input type="submit" name="enviar" value="enviar" />
        </form>
    </body>
</html>
