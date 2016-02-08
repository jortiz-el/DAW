<%-- 
    Document   : tabla
    Created on : 07-feb-2016, 17:53:23
    Author     : casa
--%>
<%@page import="com.partida.Partida"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="tabla">
<%
    String imgJugador = "img/x.png";
    String imgMaquina = "img/o.png";
    Partida partida = (Partida) request.getAttribute("partida");
    int valor;
%>
    
    <% for ( int i = 0; i < 3; i++) { %>
        <tr>
        <% for ( int j = 0; j < 3; j++) {
             int pos = i * 3 + j;
            if (partida.getPositionValue(pos) != -1) {
                if (partida.getPositionValue(pos) == 1) {
                    valor = partida.getPositionValue(pos); 
        %>
                    <td id="<%=pos%>">
                    <img src="<%=imgJugador%>">
                    </td>
               <%
                }else if (partida.getPositionValue(pos) == 0) {
                    valor = partida.getPositionValue(pos); 
                    %>
                    <td id="<%=pos%>">
                    <img src="<%=imgMaquina%>">
                    </td>
                <%    
                }else {
                %>    
                <td id="<%=pos%>" onclick='colocar(this)'></td>
                <%
                }
            }else {
                %>
                <td id="<%=pos%>" onclick='colocar(this)'></td>
            <%
            }
            
        }
        %>
        </tr>
    <%    
    }
    %>
  
</table>
