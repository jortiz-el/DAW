/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.jugada.Juego;
import java.io.IOException;
import java.io.PrintWriter;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author casa
 */
@WebServlet(name = "jugada", urlPatterns = {"/jugada"})
public class jugada extends HttpServlet {

    @Inject Juego juego = new Juego();
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            //se recoge la jugada del usuario
            int jugada = Integer.parseInt(request.getParameter("num"));
            juego.sumaIntentos();
            //se guarda en setatribute el numero aleatorio y nº de intentos
            request.setAttribute("secreto", juego.getNum_aleatorio());
            request.setAttribute("intentos", juego.getIntentos());
            //segun el numero dl jugador es redireccionado a distintas vistas
            if ( jugada == juego.getNum_aleatorio()) {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/ganado.jsp");
                rd.forward(request, response);
                juego.logout();
            }else if (jugada < juego.getNum_aleatorio()) {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/menor.jsp");
                rd.forward(request, response);
            }else {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/mayor.jsp");
                rd.forward(request, response);
            }
         
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
