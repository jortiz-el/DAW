<%-- 
    Document   : tabla
    Created on : 29-ene-2016, 1:32:12
    Author     : casa
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabla dinamica</h1>
        <%int i;%>
        <%ArrayList<String> list = new ArrayList<String>();%>
        <%//recogo los parametros en un array desde el servlet 
            list = (ArrayList<String> )request.getAttribute("param");%>
            
        <table border="1px solid grey">
            <tr>
                <td>Nombre</td><td>Apellido</td><td>Edad</td><td>Sexo</td><td>Religión</td>  
            </tr>
            <tr>
            <% // Recorrer un ArrayList con un bucle For
                for(i = 0 ;i < list.size(); i++){%>
                <td><% out.println(list.get(i));%></td>
            <%}%>
            </tr>
        </table>
            
            <br>
            
            <h1>Tabla dinamica con ArrayList iterator</h1>
            <table border="1px solid grey">
            <tr>
                <td>Nombre</td><td>Apellido</td><td>Edad</td><td>Sexo</td><td>Religión</td>  
            </tr>
            <tr>
            <% // Recorrer un ArrayList con un Iterador
                Iterator<String> it = list.iterator();
                while(it.hasNext()){%>
                 <td><%out.println(it.next());%></td>
                <%}%>
            </tr>
        </table>
    </body>
</html>
