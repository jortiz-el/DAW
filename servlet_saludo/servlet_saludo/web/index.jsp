<%-- 
    Document   : index
    Created on : 26-ene-2016, 12:33:11
    Author     : casa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario JSP + Servlets</title>
    </head>
    <body>
        <h1>Formulario JSP + Servlets</h1>
        <form action="formhandler" method="post">
            <label>Introduce tu nombre: </label>
            <input type="text" name="name" size="10" >
            <input type="submit" name="enviar" value="Enviar" >
        </form>
    </body>
</html>
