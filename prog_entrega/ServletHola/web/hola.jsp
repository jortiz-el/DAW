<%-- 
    Document   : hola
    Created on : 29-ene-2016, 0:51:41
    Author     : casa
--%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% //recojo la variable guardada en el servlet "name" y la muestro por pantalla
            String hola = (String)request.getAttribute("name");
        %>
            
        <h1> Hola <% out.println(hola); %> Bienvenido a mi primera pagina Servlet</h1>
    </body>
</html>
