/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jugada;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author casa
 */
@ManagedBean
@SessionScoped
public class Juego {

    private int num_aleatorio ;
    private int intentos;
 
    public Juego() {
        this.intentos = 0;
        aleatorio();
    }
    
    public void aleatorio() {
        this.num_aleatorio = (int) (Math.random()*100+1);
    }
    public void sumaIntentos() {
        this.intentos += 1;
    }
    public void logout() {
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
    }

    public int getNum_aleatorio() {
        return num_aleatorio;
    }

    public void setNum_aleatorio(int num_aleatorio) {
        this.num_aleatorio = num_aleatorio;
    }

    public int getIntentos() {
        return intentos;
    }

    public void setIntentos(int intentos) {
        this.intentos = intentos;
    }
    
}
