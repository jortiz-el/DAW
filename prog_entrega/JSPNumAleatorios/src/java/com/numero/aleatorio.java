/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.numero;

/**
 *
 * @author casa
 */
public class aleatorio {
    private int num;
    
    public aleatorio(){
     num = 0;
    }
    public int numAleatorio() {
     return  this.num = (int) (Math.random()*100+1);
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }
    
}
