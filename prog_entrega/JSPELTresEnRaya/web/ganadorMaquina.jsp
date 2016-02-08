<%-- 
    Document   : ganadorMaquina
    Created on : 07-feb-2016, 19:25:45
    Author     : casa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>3 en Raya</title>
        <link rel="stylesheet" href="css/CascadeStyleSheet.css">
        <script type="text/javascript" src="js/js.js"></script>
    </head>
    <body>
        <div class="container">
           <h2>Lo siento gana la maquina</h2>
            <form action="Controller" method="POST">
                <jsp:include page="tabla.jsp" />
            </form> 
        </div>
        ${partida.restart()}
    </body>
</html>
