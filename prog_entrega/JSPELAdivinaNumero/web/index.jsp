<%-- 
    Document   : index
    Created on : 06-feb-2016, 1:57:26
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
        
        <h1>Servelet adivina el numero secreto entre 0 y 100</h1>
        <form action="jugada" method="post">
            Escribe un numero : <input type="number" name="num" min="0" max="100" />
            <input type="submit" name="enviar" value="enviar" />
        </form>
    </body>
</html>
