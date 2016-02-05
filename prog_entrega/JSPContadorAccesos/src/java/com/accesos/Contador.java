/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.accesos;

/**
 *
 * @author casa
 */
public class Contador {
    private int num;
    
    public Contador(){
        num = 0;
    }
    public int sumAccesos() {
    return num += 1;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }
    
}
