
package com.contador;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;


@ManagedBean
@SessionScoped
public class Contador {
    
    private int contador;

    public Contador() {
       this.contador = 0;
    }
    
    public int getContador() {
        return contador;
    }

    public void setContador(int contador) {
        this.contador = contador;
    }
    
    public int sumaContador(){
        this.contador += 1;
        return this.contador;
    }
    
    
    
}
