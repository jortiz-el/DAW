<%-- 
    Document   : newjsp
    Created on : 30-ene-2016, 16:40:50
    Author     : casa
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servelet saludo</title>
    </head>
    <body>
        <h1>Servelet saludo</h1>
        <form action="saludo" method="post">
            Escribe tu nombre : <input type="text" name="name" size="10" />
            <input type="submit" name="enviar" value="enviar" />
        </form>
    </body>
</html>
