<%-- 
    Document   : index
    Created on : 31-ene-2016, 11:42:43
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
        <h1>Contador de accesos</h1>
        <jsp:useBean id="mybean" scope="session" class="com.accesos.Contador" />
        <h2>${mybean.sumAccesos()}</h2>
    </body>
</html>
