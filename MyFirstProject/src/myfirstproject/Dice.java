/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myfirstproject;

/**
 *
 * @author INT303
 */
public class Dice {
    private static int face;
    public void roll(){
        this.face = (int)(Math.random()*6+1);
    }
    
    public int getFace(){
        return this.face;
    }
    
    public void setFace(int face){
        this.face = face;
    }
}
