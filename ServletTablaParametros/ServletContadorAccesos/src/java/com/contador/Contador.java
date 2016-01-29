
package com.contador;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;


@ManagedBean
@SessionScoped
public class Contador {
    
    private int contador = 1;

    public Contador() {
       
    }
    
    public int getContador() {
        return contador;
    }

    public void setContador(int contador) {
        this.contador = contador;
    }
    
    public void sumaContador(){
        this.contador += 1;
    }
    
    
    
}
