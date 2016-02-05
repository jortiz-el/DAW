<%-- 
    Document   : index
    Created on : 29-ene-2016, 1:18:06
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recoge Parametros</title>
    </head>
    <body>
        <h1>Recoge Parametros</h1>
        <form action="parametros" method="post">
            Escribe tu nombre : <input type="text" name="name" size="10" />
            Escribe tu apellido : <input type="text" name="surname" size="10" />
            Escribe tu edad : <input type="text" name="age" size="10" />
            Escribe tu sexo : <input type="text" name="sex" size="10" />
            Escribe tu religión : <input type="text" name="religon" size="10" />
            <input type="submit" name="enviar" value="enviar" />
        </form>
    </body>
</html>
