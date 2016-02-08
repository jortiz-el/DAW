/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.partida;

import java.util.Arrays;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author casa
 */
@SessionScoped
public class Partida {

    private int[] position;
    private boolean start;

    public Partida() {
        this.position = new int[10];
        Arrays.fill(this.position, -1);
        this.start = false;
    }

    public boolean hasWin(int player) {
        boolean win = false;
        int[] posiciones = this.getPosition();
        for (int i = 0; i < 3; i++) {
            if (posiciones[i * 3] == player && posiciones[(i * 3) + 1] == player && posiciones[(i * 3) + 2] == player) {
                win = true;
            }
            if (posiciones[i] == player && posiciones[(i + 3)] == player && posiciones[i + 6] == player) {
                win = true;
            }
        }
        if (posiciones[0] == player && posiciones[4] == player && posiciones[8] == player) {
            win = true;
        }
        if (posiciones[2] == player && posiciones[4] == player && posiciones[6] == player) {
            win = true;
        }
        return win;
    }
    
    public int nextMatch() {
        int output = -1;
        for(int i = 0; i < 9; i++) {
            if (this.position[i] == -1) {
                output = 0;
                i = 9;
            }
        }
        return output;
    }
    public boolean hasPlay() {
        boolean output = false;
        for(int i = 0; i < 9; i++) {
            if (this.position[i] != -1) {
                output = true;
            }
        }
        return output;
    }
    public void play() {
        for(int i = 0; i < 9; i++) {
            if (this.position[i] == -1) {
                this.position[i] = 0;
                i = 9;
            }
        }
    }
    public void restart() {
        Arrays.fill(this.getPosition(), -1);
        this.start = false;
    }

    public void playerMatch(int index) {
        this.getPosition()[index] = 1;
    }


    public int getPositionValue(int index) {
        return this.getPosition()[index];
    }

    /**
     * @return the position
     */
    public int[] getPosition() {
        return position;
    }

    /**
     * @param position the position to set
     */

   
    /**
     * @return the start
     */
    public boolean isStart() {
        return start;
    }

    /**
     * @param start the start to set
     */
    public void setStart(boolean start) {
        this.start = start;
    }
    
}

